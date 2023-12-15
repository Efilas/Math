---
banner: Images/c4030b0d68d93fce9fca83796fcce15b.jpeg
---
## Cenni di Algebra:

Sia $A$ un anello commutativo con unità (Ossia un gruppo rispetto all'operazione di Somma e commutativo e con elemento neutro rispetto all'operazione di Moltiplicazione).

>[!def] Definizione di Sottoanello Ideale::
>Un insieme $I\subseteq A, I ≠\varnothing$ si dice Sottoanello ideale di $A$ se valgono:
>	 1) $I$ è sottogruppo additivo dell'anello rispetto alla somma;
>	 2) $\forall a \in I, \forall b \in A, a\cdot b \in I$ *(questa non è una proprietà di chiusura)*

**Esempio**:
	Sia $A$ un anello commutativo e con unità e sia fissato $a \in A$.
	$(a)=\{\text{Elementi di }A\text{ "divisibili" per }a\}=\{ab\; | \; b \in A\}$ 
	$(a)$ è un ideale di $A$, infatti:
	$\forall ab_1, ab_2 \in A, ab_1+ab_2=a(b_1,b_2)\in(a)$ e $\forall ab \in (a), c \in A, abc=a(bc)\in (a)$ 

>[!def] Definizione di Anello Principale
>Si dice che un ideale di un anello è principale se è generato da un elemento soltanto (*Generato nel senso di generated (algebrico) e non spanned (vettoriale)*)

**Esempio**:
	$A=\mathbb{Z}, a=n \in \mathbb{Z}\Rightarrow (a)=\{\text{multipli di }n\}\subseteq \mathbb{Z}$ 

>[!th] Teorema
>In $\mathbb{Z}$ e in $\mathbb{K}[x]$ con $\mathbb{K}$ campo, ogni ideale è principale.

***Dimostrazione***: (*Per $\mathbb{K}[x]$, in quanto per $\mathbb{Z}$ è la stessa identica cosa*)
	Sia $I$ un ideale in $\mathbb{K}[x]$. Se $I$ è nullo $\Rightarrow I=\{0\}=(0)\Rightarrow I$ è principale
	Sia $I≠\{0\}$. Prendo $p \in I$ di grado minimo e sia $q \in I$ un altro elemento di $I$. Allora si ha che il grado di $q$ è maggiore o uguale al grado di $p(\Leftrightarrow deg(q)≥deg(p))$.
	Divido $q$ per $p$, esistono allora $s$ e $r$ polinomi tali che $q=ps+r$ *(qui è dove torna che $\mathbb{K}$ è un campo)*, con $deg(r)<deg(p)$. Poiché si ha che $q=ps+r$ e $q \in I\Rightarrow ps \in I$ (in quanto è ideale) e $r \in I$. Ma poiché $deg(r)<deg(p)\Rightarrow r=0\Rightarrow q=ps$. Cioè ogni elemento è della forma $ps, s \in A$, quindi è generato da $p$ (ossia si scrive come prodotto tra $p$ e un altro elemento).

**Osservazione**: $A=\mathbb{Z}, (1)=\mathbb{Z}, (2)=2\mathbb{Z}$

**Attenzione**: L'ipotesi che $\mathbb{K}$ sia un campo è necessaria per l'enunciato per $\mathbb{K}[x]$. Infatti l'ipotesi viene utilizzata nell'algoritmo di divisione.

**Proposizione**: In $\mathbb{Z}[x]$ esistono ideali non principali.

**Esempio**:
	Consideriamo l'ideale $J\subseteq \mathbb{Z}[x]$, generato da $2$ e da $x$, ossia l'insieme $\{2p+xq \; | \; p,q \in \mathbb{Z}[x]\}$ 
	Se $J$ fosse principale, dovrebbe esistere un elemento $r \in \mathbb{Z}[x]$ che generi tutti gli elementi, tra cui $2$, ossia che lo divide. I casi possibili (a meno del segno) sono due: $r=1\vee r=2$
	Se $r=1$ allora $j=\mathbb{Z}[x]$, ma $J=xq+2p$ da cui il termine noto deve essere necessariamente pari, per cui mancano metà dei polinomi, quindi $J≠\mathbb{Z}[x]$
	Se $r=2$, allora $2$ dovrebbe generare anche $x$, ossia $x$ deve essere un multiplo di $2$ in $\mathbb{Z}[x]\Rightarrow 2(nx)$ ma $n=\frac{1}{2}\notin \mathbb{Z}$

**Osservazione**: $\mathbb{K}[x]$ e $\mathbb{Z}$ si chiamano Domini a Ideali Principali

**Osservazione**: Sia $I≠\varnothing$ un ideale in $\mathbb{K}[x]$, $I$ è principale ($\Leftrightarrow I=(p)$ con $p$ di grado minimo). Questo $p$ è unico a meno di multipli in $\mathbb{K}$

>[!def] Definizione di Polinomio Monico
>Un polinomio in $\mathbb{K}[x]$ di grado $k$ si dice Monico se il coefficiente di $x^k$ è $1 \Rightarrow$ $\exists!$ generatore monico di ogni ideale (principale) in $\mathbb{K}[x]$

**Osservazione**: Sia $I=(p)$ un ideale non nullo in $\mathbb{K}[x]$. Sia $q \in I$, il $deg(q)≥deg(p)\Rightarrow q=\underbrace{ps}_{\in I}+r\Rightarrow r=0$. Se invece fosse stato $q \in \mathbb{K}[x]$, allora non necessariamente si aveva $r=0$

>[!def] Definizione di Anello Quoziente
>Sia $A$ un anello e sia $I$ un ideale di $A$. Definisco il quoziente $A_{/I}$ come l'insieme delle classi di equivalenza $A_{/I}=\{[a]\; | \; a \in A\}$ rispetto alla relazione di equivalenza $a_1\sim a_2 \Leftrightarrow a_1-a_2 \in I$.
>Definiamo su $A_{/I}$ una struttura di anello nel modo seguente:
>	- $[a]+[b]=[a+b]$
>	- $[a][b]=[ab]$

**Esempio**: 
	$\mathbb{Z}/_{(n)}=\mathbb{Z}/_{n\mathbb{Z}}=\mathbb{Z}/_{n}$ 

**Esempio**:
	$\mathbb{R}[x]/_{(1+x^2)}=\mathbb{C}$ 

*Il prodotto è ben posto?*
Se $[b_1]=[a_1]$ e $[b_2]=[a_2]\Rightarrow b_1-a_1\in I$ e $b_2-a_2 \in I\xRightarrow{?} b_1b_2-a_1a_2 \in I$ 
Poiché $b_1b_2-a_1a_2 = b_1(b_2-a_2)+b_1a_2-a_1a_2$ Si ha che $b_1b_2-a_1a_2=\underbrace{b_1(b_2-a_2)}_{\in I}+\underbrace{(b_1-a_1)a_2}_{\in I}\Rightarrow [b_1b_2]=[a_1a_2]$ 

**Esempio**:
	Sia $\mathbb{K}[x]$. Sia $p \in \mathbb{K}[x]$ un qualsiasi polinomio di grado $k$ e sia $q \in \mathbb{K}[x]$ tale che $deg(q)≥k\Rightarrow \exists s,r \in \mathbb{K}[x]$ tale che $q=ps+r$ con $deg(r)<k\Rightarrow [q]\in \mathbb{K}[x]/_{(p)}$ e $[q]=[r]$.
	Quindi nel caso $\mathbb{R}[x]/_{(1+x^2)}$, dato un polinomio $a_0+a_1x+a_2x^2+...+a_nx^n$ (le cui classi sono $[a_0]+[a_1x]+[a_2x^2]+...+[a_nx^n]$) si ha che $[a_2x^2]=[a_2][x^2]$ ma $[x_2]=[-1]\Rightarrow [a_2x^2]=[-a_2]$ e in modo analogo $[a_3x^3]=[-a_3x]\Rightarrow \mathbb{R}[x]/_{(x^2+1)}=\{[a+bx]\; | \; a,b \in \mathbb{R}\}$ 

**Osservazione**:
	Ogni ideale $I$ di $\mathbb{K}[x]$ è anche un $\mathbb{K}-\text{sottospazio vettoriale}$ di $\mathbb{K}[x]$, infatti:
	- $\forall a_1,a_2 \in I, a_1+a_2 \in I$ dalla definizione di Ideale;
	- $\mathbb{K}\subseteq \mathbb{K}[x], \forall \lambda \in \mathbb{K}, \forall a \in I, \lambda a \in I$ 

Quindi $\mathbb{K}[x]/_{(p)}$ è un $\mathbb{K}-\text{spazio vettoriale}$.
***Dimostrazione***:
	Se $deg(p)=k\Rightarrow \{[a_0+a_1x+...a_{k-1}x^{k-1}]\; | \; a_0,a_1,...,a_{k-1}\in \mathbb{K}\}\Rightarrow a_0+a_1[x]+...+a_{k-1}[x^{k-1}]$ 
	Ho una base con $k$ elementi, ossia $[1],[x],...,[x^{k-1}]$, infatti $\mathbb{K}[x]/_{(p)}=Span\{[1],[x],...,[x^{k-1}]\}\Rightarrow dim(\mathbb{K}[x]/_{(p)})=k$ 
	*Sono L.I.?* $\displaystyle{\sum^{k-1}_{i=0}\alpha_i[x]^i}=0, \alpha_i \in \mathbb{K}$ ma ${\displaystyle{\sum^{k-1}_{i=0}\alpha_i x^i}}\Leftrightarrow {\displaystyle{\sum^{k-1}_{i=0}\alpha_i x^i}} \in I=(p)$ 
	Ogni polinomio in $I$ ha grado minore di $k\Rightarrow {\displaystyle{\sum^{k-1}_{i=0}\alpha_i x^i}}=0\Rightarrow \alpha_i=0, \forall i$ sono quindi linearmente indipendenti

**Osservazione**: $\mathbb{R}[x]/_{x^2+1}=\{[a+bx]\; | \; a,b \in \mathbb{R}\}$ ha dimensione $2\Rightarrow \mathbb{R}[x]/_{(x^2+1)} \simeq \mathbb{C}$ come spazio vettoriale
***Dimostrazione***:
	Vediamo che è un isomorfismo di campi:
	Somma: $[a+bx]+[c+dx]\xlongequal{\text{def}}[a+c+(b+d)x]$ 
	Prodotto: $[a+bx][c+dx]=[ac+adx+bcx+bdx^2]=[ac-bd+(ad+bc)x]$
	Da ciò si riesce a vedere facilmente che $\mathbb{R}[x]/_{(x^2+1)} \simeq \mathbb{C}$ è un isomorfismo di campi
	Dimostriamo ora che esiste anche l'inverso
	Se $[a+bx]≠0\Leftrightarrow (a,b)≠(0,0)$, $[a+bx][\frac{a}{a^2+b^2}-\frac{b}{a^2+b^2}x]=1\Rightarrow \mathbb{R}[x]/_{(x^2+1)}$ è un campo e l'applicazione 
	$\begin{matrix}\mathbb{R}[x]/_{(x^2+1)} & \rightarrow & \mathbb{C}\\ [a+bx] & \mapsto & a+bi\end{matrix}$ è un isomorfismo di campi.

**Esempio**:
	$\mathbb{Q}[x]/_{(x^2-2)}$ è $\mathbb{Q}[\sqrt{2}]$. (È un sottospazio vettoriale di $\mathbb{Q}$ di dimensione $2$ generato da $[1]$ e da $[x]$, in quanto $[x^2]=2$)
	$\Rightarrow \mathbb{Q}[x]/_{(x^2-2)}=\{[a+bx] \; | \; a,b \in \mathbb{Q}\}$. Infatti:
	- $[a+bx]+[c+dx]=[a+c+(b+d)x]$
	- $[a+bx][c+dx]=[ac+adx+bcx+bdx^2]=[ac+2bd+(ad+bc)$ 
	Analogamente a prima possiamo trovare un isomorfismo tra $\mathbb{Q}[x]/_{(x^2-2)}$ e $\mathbb{Q}[\sqrt{2}]=\{a+b\sqrt{2}\; | \; a,b \in \mathbb{Q}\}$.
	Quello che ho fatto è stato estendere il campo $\mathbb{Q}$ con un campo $\mathbb{Q}[\sqrt{2}]$ più grande che lo contiene.

*Domanda: Se quoziento $\mathbb{K}[x]$ rispetto ad un suo ideale ottengo sempre un campo?*
No, per esempio in $\mathbb{Z}$, se lo quoziento per $(n)$, ottengo un campo $\Leftrightarrow n$ è primo

>[!th] Teorema: Identità di Bézout per i polinomi in $\mathbb{K}[x]$
>Siano $p$ e $q$ polinomi in $\mathbb{K}[x]$ primi tra loro (cioè se $r \in \mathbb{K}[x], r|p$ e $r|q\Rightarrow deg(r)=0$), allora esistono $s,t \in \mathbb{K}[x]$ tali che $1=ps+qt$ 

***Dimostrazione***:
	Consideriamo l'ideale $J$ di $\mathbb{K}[x]$ generato da $p$ e $q$, ossia $J=\{pa+qb\; | \;a,b \in \mathbb{K}[x]\}\ni p,q$. Poiché ogni ideale di $\mathbb{K}[x]$ è principale, $J=(r)$ con $r \in \mathbb{K}[x]$, in particolare $r|p$ e $r|q\Rightarrow r$ ha grado $0\Rightarrow J=(1)\Rightarrow \exists s,t \in \mathbb{K}[x]$ tali che $1=ps+qt$

>[!def] Definizione di Polinomio Irriducibile
>Un polinomio $p \in \mathbb{K}[x]$ si dice irriducibile se non esistono $p_1,p_2 \in \mathbb{K}[x]$, $0<deg(p_i)<deg(p)$ tali che $p=p_1p_2$

**Esempio**:
	$x^2+1$ è irriducibile su $\mathbb{R}$ ma non su $\mathbb{C}$, quindi dipende dalla scelta del campo $\mathbb{K}$.

 >[!th] Teorema
 $\mathbb{K}[x]/_{(p)}$ è un campo se e solo se $p$ è irriducibile su $\mathbb{K}$

***Dimostrazione***: 
	$\Rightarrow)$ Supponiamo per assurdo che $p=p_1p_2$ con $p_1,p_2 \in \mathbb{K}[x]$ con $0< deg(p_i)<deg(p)\Rightarrow [0]=[p]=\underbrace{[p_1]}_{≠0}\underbrace{[p_2]}_{≠0}$ il che è assurdo in quanto un campo è un dominio di integrità.
	$\Leftarrow)$ Supponiamo $p$ sia irriducibile. Sia $[q]\in \mathbb{K}[x]/_{(p)}$ un elemento non nullo, cioè $q \notin (p)\Rightarrow p\nmid q\Rightarrow p$ e $q$ sono primi tra loro, poiché si ha che $p$ è irriducibile e $q \nmid p\Rightarrow$ vale quindi il teorema dell'identità di Bézout tra i polinomi, ossia $\exists s,t \in \mathbb{K}[x]$ tali che $1=ps+qt\Rightarrow [1]=[ps]+[qt]$ ma $[ps]=0\Rightarrow [1]=[q][t] \Rightarrow$ Esiste un inverso per ogni elemento $\Rightarrow$ è un campo.
	*Quozientare $\mathbb{K}[x]$ anello in questo modo mi garantisce che ho un anello, quindi dimostrando l'esistenza degli inversi ottengo un campo.*

**Attenzione**: Sia $p(x)\in \mathbb{K}[x]$. Se $p$ ha grado $2\Rightarrow p$ è irriducibile su $\mathbb{K}\Leftrightarrow$ non ha radici in $\mathbb{K}$.
La stessa cosa vale anche per i polinomi di grado 3, $p=p_1p_2\Rightarrow x^3+ax^2+bx+c=(x-\lambda)q(x)$, dove $q(x)$ è un polinomio di secondo grado
*Invece, a partire dal quarto grado, $p$ è riducibile se e solo se ha almeno una radice in $\mathbb{K}$.*

La cosa però smette di essere valida con i polinomi di quarto grado, infatti $(x^2+1)(x^2+2)$ è riducibile in $\mathbb{R}$ ma non ha radici reali.

**Esempio**:
	Sia $\mathbb{K}=\mathbb{Z}/_{2}$ e sia $p(x)=x^2+x+1$. $p$ è irriducibile su $\mathbb{Z}/_2$ infatti $p(0)=1=p(1)\Rightarrow \mathbb{Z}/_2[z]\big{/}_{(p)}$ è un campo con $4$ 
	elementi poiché esso è un $\mathbb{Z}_2$ spazio vettoriale di dimensione 2.

**Esempio**:
	$\mathbb{K}=\mathbb{Z}/_3$ e $p=x^2+1$. Si può vedere che $p(x)$ è irriducibile in $\mathbb{Z}/_3$, infatti $p(0)=1,p(1)=2,p(2)=5=2$. $\mathbb{Z}/_3[x]\big{/}_{(p)}$ è un campo con $9$ elementi in quanto è anche uno spazio vettoriale di dimensione $2$.

**Osservazione**: Si può dimostrare che $\forall p$ primo e $\forall n \in \mathbb{N}$, esiste un campo finito con $p^n$ elementi che si costruisce in questo modo

>[!def] Definizione di Omomorfismo di Anelli
>Siano $A_1,A_2$ due anelli. Si dice che l'applicazione $\varphi: A_1\rightarrow A_2$ è un omomorfismo di anelli se:
>	- $\varphi(a+a')=\varphi(a)+\varphi(a')$
>	- $\varphi(aa')=\varphi(a)\varphi(a')$

Il Quoziente $A/_I$ ha la struttura di anello (naturale)

>[!def] Definizione di Anello Euclideo
> Un anello si dice euclideo quando gode dell'algoritmo euclideo di divisione con il resto. In particolare quando ogni suo ideale è principale

- In $\mathbb{R}$ i polinomi irriducibili sono di grado 1 o di grado 2 a discriminante negativo ($x^4+1$ è riducibile in $\mathbb{R}$)
- Una base di $\mathbb{K}[x]/_{(f)}$ è $\{[1],[x],...,[x^{k-1}]\}$ con $deg(f)=k$ e $f$ non ha radici in $\mathbb{K}$ ma in ha radici in $\mathbb{K}[x]/_{(f)}$
- $f=a_0+a_1x+...a_kx^k$ in $\mathbb{K}[x]/_{(f)}=\mathbb{L}$ 

*Cosa succede se calcolo $f$ in $[x]$?*
$f([x])=a_0+a_1[x]+...+a_k[x^k]=[a_0+a_1x+...+a_kx^k]=[f]=0\Rightarrow [x]$ è la radice di $f$ considerato come polinomio in $\mathbb{L}[x]$ 

Si dice che $\mathbb{L}$ è ottenuto da $\mathbb{K}$ aggiungendo una radice di $f$ *(Non è altro che un estensione di campo)*

**Attenzione**: Può darsi che tutte le radici di $f$ siano in $\mathbb{L}$ o meno, non lo si può sapere a priori.

**Esempio**:
	$\mathbb{L}=\mathbb{Q}[x]/_{(1+x+x^2+x^3+x^4)}$. In $\mathbb{L}$ il polinomio si fattorizza completamente in termini di grado 1, quindi $\mathbb{L}$ contiene tutte le radici. È un polinomio ciclotomico di grado 4 e le radici elevate alla quinta danno 1, per gli assiomi di campo, se ne esiste una, esistono tutte

**Esempio**:
	$\mathbb{L}=\mathbb{Q}[x]/_{(x^3-2)}$. Il polinomio $x^3-2$ in $\mathbb{L}[x]$ si fattorizza come $(x-[x])\underbrace{(x^2+ax+b)}_{\text{Irriducibile in }\mathbb{L}}$, dove $[x]$ è una radice (ne ho ottenuta una sola su tre
	Per semplicità denotiamo $\rho\xlongequal{\text{def}}[x]$, quindi gli elementi di $\mathbb{L}$ si scrivono, in modo unico, come $a+b\rho +c\rho^2$ con $a,b,c \in \mathbb{Q}$ 
	*Come si fanno i conti?*
	$(a+b\rho +c\rho^2)(a'+b'\rho +c'\rho^2)=aa'+ab'\rho+ac'\rho^2+a'b\rho+bb'\rho^2+c'b\rho^3+ca'\rho^2+cb'\rho^3+cc'\rho^4=$ 
	ma questo è anche uguale a $aa'+ab'\rho+ac'\rho^2+a'b\rho+bb'\rho^2+2c'b+ca'\rho^2+2cb'+2cc'\rho$, questo perché $\rho^3=2; \rho^4=\rho^3\rho=2\rho$ 

**Esercizio**: Dividere $x^3-2$ per $x-\rho$:
	$x^3-2=(x-\rho)(x^2+x\rho+\rho^2)$, ma $(x^2+x\rho+\rho^2)$ è riducibile se e solo se il discriminante $\Delta=-3\rho^2$ è un quadrato in $\mathbb{L}$.

**Osservazione**: Sia $\mathbb{K}$ un campo, un trinomio $x^2+ax+b\in \mathbb{K}[x]$ ha radici in $\mathbb{K}\Leftrightarrow a^2-4b$ è un quadrato in $\mathbb{K}$ 

Riprendendo l'esempio precedente, $-3$ è un quadrato in $\mathbb{L}$?
$(a+b\rho + c\rho^2)^2=-3\Rightarrow a^2+b^2\rho^2+2c^2\rho+2ab\rho+2ac\rho^2+4bc=-3\Leftrightarrow \begin{cases}a^2+4bc=-3\\ ab+c^2=0\\ ac+b^2=0\end{cases}$ che è un sistema impossibile

Se voglio tronare un estensione di $\mathbb{Q}$ nella quale $x^3-2$ ha $3$ radici, devo fare un estensione di $\mathbb{L}$, cioè $\mathbb{L}[x]/_{(\tau^2+\tau\rho+\rho^2)}$.
$\mathbb{Q}\subseteq_{(3)}\mathbb{L}\subseteq_{(2)}\mathbb{L}[x]/_{(\tau^2+\tau\rho+\rho^2)}$ che ha dimensione $6$, *è un procedimento analogo a $\mathfrak{S}_6$*. Così facendo ottengo un campo di spezzamento.

>[!def] Definizione di Campo di Spezzamento
 Un Campo di Spezzamento è l'estensione più piccola che contiene tutte le radici del polinomio.

Consideriamo $\mathbb{R}$ e $\mathbb{C}$.
In $\mathbb{R}$ consideriamo il sottocampo $\{a+b\sqrt[3]{2}+c\sqrt[3]{4}\; | \; a,b,c\in \mathbb{Q}\}=\mathbb{Q}[\sqrt[3]{4}]$ 
Definiamo quindi $\varphi:\begin{matrix}\mathbb{Q}[x]/_{(x^3-2)} & \rightarrow & \mathbb{Q}[\sqrt[3]{2}]\\ [x] & \mapsto & \sqrt[3]{2}\end{matrix}$. Questo diventa un isomorfismo di campi

## Polinomi e Spazi Vettoriali

Sia $p \in \mathbb{K}[x]$ con $\mathbb{K}$ un campo e sia $f\in End(V)$ con $V$ un $\mathbb{K}-\text{spazio vettoriale}$ di dimensione $n$.
Quindi $p(x)=a_0+a_1x+a_2x^2+...+a_nx^n$ (Se $\alpha \in \mathbb{K}, p(\alpha)=a_0+a_1\alpha+a_2\alpha^2+...+a_n\alpha^n$)

**Esempio**:
	$p(0)=a_0$, $p(1)=a_0+a_1+...+a_n$

È possibile trattare gli endomorfismi come variabili per un polinomio, infatti $p(f)=a_0I$ (dove $I$ è l'endomorfismo identità) $+a_1f+a_2f^2+...+a_nf^n$ con $f^i=\underbrace{f\circ f\circ... \circ f}_{i \text{ volte}}$ e applicabile ad un vettore $v \in V$ si ha $p(f)(v)=a_0v+a_1f(v)+a_2f^2(v)+...+a_nf^n(v)$ 

*Analogamente lo si può fare anche con le matrici $A \in M_n(\mathbb{K})$:*
$p(A)=a_0I_n+a_1A+...+a_nA^n\in M_n(\mathbb{K})$ 

**Proprietà**:
1) Sia $\mathscr{B}$ una base di $V$ e indichiamo con $M_\mathscr{B}(f)$ la matrice di $f$ rispetto alla base $\mathscr{B}$. $M_\mathscr{B}(a_0I+a_1f+...+a_nf^n)$ 
	$M_\mathscr{B}(p(f))=p(M_\mathscr{B}(f))$, perché $M_\mathscr{B}(f_1+f_2)=M_\mathscr{B}(f_1)+M_\mathscr{B}(f_2); \; M_\mathscr{B}(\alpha f)=\alpha M_\mathscr{B}(f)$
	$M_\mathscr{B}:\begin{matrix}End(V) & \rightarrow & M_n(\mathbb{K})\\ g & \mapsto & M_\mathscr{B}(g)\end{matrix}$ è un isomorfismo (applicazione lineare)
	Inoltre, siano $f,g \in End(V), M_\mathscr{B}(fg)=M_\mathscr{B}(f)M_\mathscr{B}(g)$ 
2) Siano $A,B\in M_n(\mathbb{K})$ simili, cioè $\exists H \in GL_n(\mathbb{K})\; | \; B=H^{-1}AH$ 
	Sia $p \in \mathbb{K}[x]\; | \; p(x)=a_0+a_1x+...+a_nx^n$ 
	Allora $p(B)=a_0I+a_1B+...+a_nB^n=a_0I+a_1H^{-1}AH+...+a_nH^{1}A^nH=H^{-1}(a_0I+a_1A+...+a_nA)H=H^{-1}p(A)H$  
3) Siano $p,q\in \mathbb{K}[x],\; p(x)=a_0+a_1x+...+a_nx_n,\; q(x)=b_0+b_1x+...+b_nx^n$ 
	Sia $f \in End(V)$, allora $p(f)q(f)=q(f)p(f)$. $p(f)$ e $q(f)$ commutano perché prendo un singolo $f \in End(V)$ e ogni endomorfismo commuta con se stesso. Infatti
	$(a_0I+a_1f+...+a_nf^n)(b_0I+b_1f+...+b_nf^n)=a_0b_0I+a_1b_0f+a_0b_1f+a_1b_1f^2...$ 
	Alla posizione $i$-esima e $j$-esima troverò: $a_if^i\cdot b_jf^j=a_ib_jf^{i+j}=b_ja_if^{j+i}=b_jf^j\cdot a_if^i$ 

Quindi, fissato un $f \in End(V)$, $V=\mathbb{K}-\text{spazio vettoriale}$ con dimensione $n$: $\Phi:\begin{matrix}\mathbb{K}[x] & \rightarrow & End(V)\\ p & \mapsto & p(f)\end{matrix}$  che è lineare:
$(p+q)(f)=p(f)+q(f), \forall p,q \in \mathbb{K}[x]; \; (\alpha p)(f)=\alpha p(f), \forall \alpha \in \mathbb{K}, \forall p \in \mathbb{K}[x]$ 
Riguardo alla struttura di anello su $\Phi$, questo è un omomorfismo di anelli: $\Phi(pq)=\Phi(p)\Phi(q)$
Inoltre, poiché $\Phi$ è lineare, $dim(\mathbb{K}[x])=∞$ r $dim(End(V))=n^2\Rightarrow \Phi$ non può essere iniettiva, in quanto $Ker(\Phi)$ non è banale.

**Proposizione**: $\varphi: A\rightarrow A'$ un omomorfismo di anelli, allora $Ker(\varphi)$ è un ideale di $A$
***Dimostrazione***:
	1) Siano $a,b \in Ker(\varphi)$, $\varphi(a+b)=\underbrace{\varphi(a)}_{=0}+\underbrace{\varphi(b)}_{=0}=0$ 
	2) Sia $a \in Ker(\varphi), b \in A$, $\varphi(ab)=\underbrace{\varphi(a)}_{=0}\varphi(b)=0$ 
	$Ker(\Phi)$ è un ideale non banale di $\mathbb{K}[x]$ e poiché è un ideale di $\mathbb{K}[x]$ è principale, $Ker(\Phi)=(q_f)$ è principale.
	Esiste quindi un unico polinomio monico di grado minimo che genera questo ideale. $q_f$ si chiama polinomio minimo dell'endomorfismo $f$. $Ker(\Phi)=\{p \in \mathbb{K}[x]\; | \; p(f)=0\}$

>[!def] Definizione di Polinomio minimo
> Il polinomio $q$ si dice polinomio minimo se è il polinomio monico di grado minimo che si annulla in $f$.

Ogni altro polinomio che si annulla in $f$ è multiplo del polinomio minimo di $f$. Analogamente definiamo il polinomio minimo di una matrice $A$ considerando: $\Phi':\begin{matrix}\mathbb{K}[x] & \rightarrow & M_n(\mathbb{K})\\ p & \mapsto & p(A)\end{matrix}$ 

**Esempio**:
	$A=\begin{pmatrix}1 & 0\\ 0 & 2\end{pmatrix}$, $q_A(x)=(x-1)(x-2)$. Dico che $q_A(x)$ è il polinomio minimo di $A$. Infatti $q_A(x)=(A-I_2)(A-2I_2)=$$=\begin{pmatrix}0& 0\\ 0 & 1\end{pmatrix}\begin{pmatrix}-1 & 0\\ 0& 0\end{pmatrix}=\begin{pmatrix}0 & 0\\ 0 & 0\end{pmatrix}$, $q_A(x)\in Ker(\Phi)$ che è principale
	Se $q_A$ non fosse il polinomio minimo di $A$, tale polinomio minimo lo dividerebbe, quindi sarebbe $(x-1)\vee(x-2)$, ma nessuno di questi si annulla in $A$. ($A-I_2≠0\wedge A-2I_2$)
	In quest'esempio $q_A(x)\equiv p_A(x)$ ossia il polinomio minimo coincide con quello caratteristico.

**Esempio**:
	$I_2=\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}$, $q_{I_2}(x)=(x-1)≠p_{I_2}(x)$ 

**Esempio**:
	$B=\begin{pmatrix}1 & 1 & 0\\ 0 & 1 & 0\\ 0 & 0 & 0\end{pmatrix}, p_B(x)=(x-1)^2x=q_B(x)$  

>[!th] Teorema di Decomposizione Primaria
>Sia $f \in End(V), dim(V)=n$. Sia $p \in \mathbb{K}[x]\; | \; p(f)=0$ e $p=p_1p_2$ con $p_1$ e $p_2$ coprimi. Allora $V=Ker(p_1(f))\oplus Ker(p_2(f))$ 

**Osservazione**: Supponiamo ad esempio che il polinomio minimo di $f\in End(V)$ sia $q_f=(x-1)(x-2)\Rightarrow f$ è diagonalizzabile perché $V=Ker(f-I_n)\oplus Ker(f-2I_n)$

***Dimostrazione***:
	Per il teorema di Bézout $\exists a,b \in \mathbb{K}[x]$ tali che $1=p_1a+p_2b$.
	Calcolandoli in $f$: $I=p_1(f)a(f)+p_2(f)b(f)\in End(V)$, $\forall v \in V$ *cioè applico $v$ ad entrambi*:
	$v=p_1(f)a(f)(v)+p_2(f)b(f)(v)$. 
	Mostro a questo punto che $p_1(f)a(f)(v)\in Ker(p_2(f))$. Infatti calcolo $p_2(f)p_1(f)a(f)(v)=\underbrace{p_1(f)p_2(f)}_{p(f)=0}a(f)(v)=0$ 
	Analogamente $p_2(f)b(f)\in Ker(p_1(f))$
	Ora, se $v\in Ker(p_1(f))\cap Ker(p_2(f))\Rightarrow v=0$ perché $v=p_1(f)a(f)(v)+p_2(f)b(f)(v)=a(f)\underbrace{p_1(f)(v)}_{=0}+b(f)\underbrace{p_2(f)(v)}_{=0}=0\Rightarrow v=0$ 

**Osservazione**: Notiamo che $Im(p_1(f))\subseteq Ker(p_2(f))$ e $Im(p_2(f))\subseteq Ker(p_1(f))$ e per motivi dimensionali, queste relazioni sono delle uguaglianze, infatti da $V=Ker(p_1(f))\oplus Ker(p_2(f))\Rightarrow dim(Ker(p_2(f)))=dim(V)-dim(Ker(p_1(f)))=dim(Im(p_1(f)))$  

**Osservazione**: $Ker(p_1(f))$ è $f$-invariante. Sia $w \in Ker(p_1(f))\xRightarrow{?}f(w)\in Ker(p_2(f))$
Se scelgo una base di $V$ data dall'unione di una base di $Ker(p_1(f))$ e una base data da $Ker(p_2(f))$
Ottengo allora che $M_\mathscr{B}(f)=\begin{pmatrix} A_1 & 0\\ 0 & A_2\end{pmatrix}$ dove $A_1=M_\mathscr{B}(f|_{Ker(p_1(f))})$ 

**Corollario**: Sia $p \in \mathbb{K}[x], p=p_1p_2...p_k$ con $p_1,p_2,...,p_k \in \mathbb{K}[x]$ a due a due coprimi e sia $f \in End(V)$ e supponiamo che $p(f)=0$. Allora $V=Ker(p_1(f))\oplus ... \oplus Ker(p_k(f))$ e come prima $Ker(p_1(f)),...,Ker(p_k(f))$ sono $f$-invarianti.
***Dimostrazione***:
	Si fa per induzione con $k>2$
	Con $k=2$ è il caso del teorema precedente.
	Supponiamo quindi $k>2$ e assumiamo l'ipotesi induttiva, ma $q \in \mathbb{K}[x], q=q_1...q_{k-1}$ a due a due coprimi e $g \in End(V)$ tale che $q(g)=0$, allora $W=Ker(q_1(g))\oplus... \oplus Ker(q_{k-1}(g))$
	Con $k>2$ si ha $p=p_1\underbrace{p_2...p_k}_{=q}$ e per ipotesi $p$ e $q$ sono coprimi $\Rightarrow V= Ker(p_1(f))\oplus \underbrace{Ker(q(f))}_{=W}\Rightarrow W=Ker(q(f))$ da cui si ha che $q(f)|_{W}=0=q(f|_W)$ 
	Sia quindi $q(x)=a_0+a_1x+...+a_nx^n\Rightarrow q(f)=a_0I+a_1f+...+a_nf^n$. Allora $q(f)|_W$ con $w\in W$, $a_0w+a_1f(w)+...+a_nf^n(w)=q(f|_W)(w)\Rightarrow$ posso applicare l'ipotesi induttiva $Ker(q(f))=W=Ker(p_2(f|_W))\oplus ... \oplus Ker(p_k(f|_W))$ 
	Basta ora osservare che $Ker(p_i(f|_W))=Ker(p_i(f)), \forall i≥2$ 
	Del Resto abbiamo che $Ker(p_i(f|_W))=Ker(p_1(f))|_W$, quindi $Ker(p_i(f))\subseteq Ker(q(f))=W\Rightarrow Ker(p_i(f))|_W=Ker(p_i(f)), \forall i>2$ 
	Quindi $q(f)=p_2(f)...p_n(f)$ e se $z \in Ker(p_2(f))$, allora $q(f)(z)=p_1(f)(z)...p_k(f)(z)=0$ 

**Esempio**:
	Sia $f\in End(V)$. Se il polinomio minimo di $f$ è della forma $q_f(x)=(x-\lambda_1)...(x -\lambda_k)$ con $\lambda_1≠\lambda_2≠...≠\lambda_k$ allora $V=Ker(f-\lambda_1 I)\oplus ... \oplus Ker(f-\lambda_k I)$ dove $Ker(f-\lambda_i I)$ è l'autospazio relativo di $\lambda_i$ e $f$ è diagonalizzabile.

**Esempio**:
	$f\in End(V)$ tale che $f^2=I$, allora $f$ è diagonalizzabile.
	Per Ipotesi se $p(x)=x^2-1=(x-1)(x+1)$, $p(f)=0\Rightarrow$ il polinomio minimo divide $x^2-1\Rightarrow$ 
	$\begin{cases}q(x)=x-1\Rightarrow f=I\\ q(x)=x+1\Rightarrow f=-I\\ q(x)=(x+1)(x-1)\Rightarrow V = Ker(f+I)\oplus Ker(f-I)\end{cases}$

>[!th] Teorema di Cayley-Hamilton
>Sia $f\in End(V)$ con $V=\mathbb{K}-\text{spazio vettoriale}$ di dimensione $n$ e sia $p_f(x)\in \mathbb{K}[x]$ il suo polinomio caratteristico, allora $p_f(f)=0$. Equivalentemente, data $A \in M_n(\mathbb{K})$ con polinomio caratteristico $p_A\in \mathbb{K}[x], p_A(A)=0$

***Dimostrazione***:
	Supponiamo innanzitutto che $f$ sia triangolabile in $\mathbb{K}$, cioè che esista una base $\mathscr{B}_V=\{v_1,...,v_n\}$ rispetto alla quale la matrice $M_{\mathscr{B}_V}$ sia triangolare superiore $T=\begin{pmatrix}a_{1,1}& ... & a_{1,n}\\ & \ddots & \vdots\\ 0 & & a_{n,n}\end{pmatrix}\Rightarrow$ il polinomio caratteristico di $f$ è $p_f(x)=(a_{1,1}-x)...(a_{n,n}-x)\Rightarrow p_f(f)=(a_{1,1}-f)...(a_{n,n}-f)$.
	Voglio dimostrare che $p_f(f)$ è l'endomorfismo nullo ossia che $p_f(f)(v_i)=0, \forall i =1,...n$
	$p_f(f)(v_1)=(a_{1,1}I-f)...(a_{n,n}I-f)(v_1)=(a_{2,2}I-f)...(a_{n,n}I-f)(a_{1,1}I-f)(v_1)=0$ 
	$p_f(f)(v_2)=(a_{1,1}I-f)(a_{2,2}I-f)...(a_{n,n}I-f)(v_2)=a_{1,2}(a_{1,1}I-f)(v_2)=0,\; f(v_2)=a_{1,2}v_1+a_{1,2}v_2$
	$\Rightarrow p_f(f)(v_i)=0, \forall i \in \{1,...,n\}\Rightarrow p_f(f)=0$
	Supponiamo ora $f$ qualsiasi, sia $\mathbb{K}'$ un'estensione di $\mathbb{K}$ in cui $f$ abbia tutte le radici $\Rightarrow f$ è triangolarizzabile in $\mathbb{K}'$. In altre parole, sia $\mathscr{B}$ una base di $V$ e sia $A=M_\mathscr{B}(f)\in M_n(\mathbb{K}):\exists H\in GL_n(\mathbb{K}')$ tale che $H^{-1}AH=T\in M_n(\mathbb{K}')$.
	Supponiamo che il polinomio caratteristico di $A$ e quello di $T$ coincidano.
	Calcolo allora $p_A(A)=p_A(HTH^{-1})=H\underbrace{p_A(T)}_{=0}H^{-1}=0$ 

**Corollario**: Il polinomio minimo divide quello caratteristico.

**Esempio**:
	Supponiamo $A\in M_3(\mathbb{K})$ tale che $p_A(x)=(x-1)^2x$ ne sia il polinomio caratteristico.
	Ho tutte le possibilità $x;x-1;(x-1)^2x;x(x-1)$? NO

**Proposizione**: Ogni autovalore di $f$ è radice del suo polinomio minimo.

Sia $f\in End(V)$ (e equivalentemente $A\in M_n(\mathbb{K})$), esistono polinomi $p \in \mathbb{K}[x],p≠0$ tali che $p(f)=0$
Il polinomio minimo di $f$ è uno di questi. Inoltre è caratterizzato dal fatto che:
	- il polinomio minimo è un polinomio non nullo, monico, di grado minimo che annulla $f$, ossia $q_f(f)=0$
	- è il generatore dell'Ideale $Ker\left(\begin{matrix}\mathbb{K}[x] & \rightarrow & End(V)\\ p & \mapsto & p(f)\end{matrix} \right)$ 

Perché ci interessa così tanto?

>[!th] Teorema di Decomposizione Primaria 
>Una Scomposizione in potenza di irriducibili di un polinomio che annulla $f$, ad esempio $q_f$, da una scomposizione di $V$ in sottospazi $f-$invarianti che sono in somma diretta

>[!th] Teorema di Cayley-Hamilton 
Se $p_f$ è il polinomio caratteristico di $f$. Allora $p_f(f)=0\Rightarrow q_f \mid p_f$ 

***Seconda Dimostrazione***:
	Vogliamo dimostrare che $p_f(f)(v)=0, \forall v ≠0$.
	Sia $v\in V$
	Definisco $\ell(v)\xlongequal{\text{def}}max\{k\; | \; v,f(v),...,f^{k-1}(v) \text{ Sono L.I.}\}\Rightarrow \{v,...,f^{\ell-1}(v)\}$ sono L.I.
	Quindi $f^\ell(v)\in Span\{v,...,f^{\ell-1}(v)\}\Rightarrow f^\ell(v)=a_0v+a_1f(v)+...+a_{\ell-1}f^{\ell-1}(v)$
	Completiamo quindi $\{v,...,f^{\ell-1}(v)\}$ in una base $\mathscr{B}$ di $V$.
	$M_\mathscr{B}(f)=\begin{pmatrix}\boldsymbol{A}=\begin{matrix}0 & 0 & ... & 0 & a_0\\ 1 & 0 & ... & 0 & a_1\\ 0 & 1 & & 0 & a_2\\ \vdots & \vdots & \ddots & \vdots & \vdots \\ 0 & 0 & ... & 1 & a_{\ell-1}\end{matrix} & \boldsymbol{*}\\ \boldsymbol{0} & \boldsymbol{D}\end{pmatrix}$ da cui si ottiene che $p_f(x)=p_A(x)p_D(f)$ e $p_A(x)=x^\ell-a_{\ell-1}x^{\ell-1}-...-a_0$ 
	Quindi $p_f(f)(v)=p_D(f)p_A(f)(v)=p_D(f)(f^\ell-a_{\ell-1}f^{\ell-1}-...-a_0I)(v)=p_D(f)(f^\ell(v)-a_{\ell-1}f^{\ell-1}(v)-...-a_0v)=$$=p_D(f)(0)=0$ 
	Quindi $\forall v \in V, p_f(f)(v)=0\Rightarrow p_f(f)=0$

**Osservazione**: Sappiamo già che $f$ è invertibile $\Leftrightarrow p_f(0)≠0$ 
Il Teorema di Cayley-Hamilton ci fornisce un modo per calcolare $f^{-1}:p_f(x)=(-1)^n(x^n+a_{n-1}x^{n-1}+...+a_0)$ con $a_0≠0$. Con C-H: $f^n+a_{n-1}f^{n-1}+...+a_1f+a_0I=0\Rightarrow I=-\frac{1}{a_0}(f^{n-1}+a_{n-1}f^{n-2}+...+a_1I)f\Rightarrow$  
$-\frac{1}{a_0}(f^{n-1}+a_{n-1}f^{n-2}+...+a_1I)=f^{-1}$ 

**Esempio**:
	$A=\begin{pmatrix}0 & 1 & 1\\ -1 & 0 & 2\\ 0 & 0 & 1\end{pmatrix}\Rightarrow p_A(x)=-(x-1)(x^2+1)$ 
	Con Cayley-Hamilton: $(A-I)(A^2+I)=0\Rightarrow A^3+A-A^2-I=0\Rightarrow I=A^3-A^2+A\Rightarrow A^{-1}=A^2-A-I$  

Sappiamo già che $q_f(x)$ divide $p_f(x)$. Si può dire qualcosa di più preciso?

>[!th] Teorema 
>Sia $f\in End(V)$. Siano $q_f(x)$ il suo polinomio minimo e $p_f(x)$ il suo polinomio caratteristico. Se $\lambda_0$ è una radice di $p_f(x)$. Allora $\lambda_0$ è una radice di $q_f(x)$

**Osservazione**: L'implicazione inversa è una conseguenza del fatto che $q_f|p_f$
***Dimostrazione***: 
	Poiché $\lambda_0$ è un autovalore di $f$ esiste $v_0≠0$ tale che $f(v_0)=\lambda_0v_0\Rightarrow f^k(v_0)=\lambda_0^k v_0$ 
	$q_f(x)=b_0+b_1x+...+b_{d-1}x^{d-1}+x^d\Rightarrow q_f(f)=b_0I+b_1f+...+b_{d-1}f^{d-1}+f^d$ 
	Quindi $q_f(f)(v_0)=0$ per definizione di polinomio minimo e questo è uguale a $(b_0I+b_1f+...+b_{d-1}f^{d-1}+f^d)(v_0)=$$=b_0v_0+b_1f(v_0)+...+b_{d-1}f^{d-1}(v_0)+f^d(v_0)=(b_0+b_1\lambda_0+b_2\lambda_0^2+...+b_{d-1}\lambda^{d-1}_0+\lambda_0^{d-1})v_0=q(\lambda_0)v_0$  
	*Quello che abbiamo osservato è che: se $v_a$ è autovettore di $f$ con autovalore $\lambda_0$ e $r$ è un polinomio $\Rightarrow$ $v_0$ è autovettore di $r(f)$ con autovalore $r(\lambda_0)$*
	Quindi $q_f(f)(v_0)=0$ e $q_f(f)(v_0)=q(\lambda_0)v_0$ ma $v_0≠0\Rightarrow q_f(\lambda_0)=0$ 

Un caso particolare: supponiamo che $p_f$ abbia tutte le radici in $\mathbb{K}$. $p_f(x)=(x-\lambda_1)^{\mu_1}...(x-\lambda_k)^{\mu_k}$ con $\mu_i=\mu(\lambda_i)$ con $\lambda_1,...,\lambda_k$ distinti $\Rightarrow q_f(x)=(x-\lambda_1)^{a_1}...(x-\lambda_k)^{a_k}$ con $1≤a_i≤\mu_i$ 

>[!th] Teorema 
>Sia $f\in End(V)$ tale che $p_f$ ha tutte le radici in $\mathbb{K}$. $f$ è diagonalizzabile $\Leftrightarrow q_f$ è "libero di quadrati" (nella notazione precedente, $a_i=1, \forall i\in\{1,...,k\}$)

***Dimostrazione***:
	$\Leftarrow)$ Se $q_f(x)=(x-\lambda_1)...(x-\lambda_k)$, i polinomi $(x-\lambda_1),...,(x-\lambda_k)$ sono primi a due a due. $\Rightarrow$ per il Teorema di Decomposizione primaria $V=\displaystyle{\bigoplus^k_{i=1} Ker(f-\lambda_iI)=\bigoplus_{i=1}^kV_{\lambda_i}}\Rightarrow V$ è somma diretta di autospazi $\Rightarrow V$ è diagonalizzabile.
	$\Rightarrow)$ $V=\displaystyle{\bigoplus V_{\lambda_i}}$ e mostriamo che $q_f(f)(v)=0, \forall v$ con $q(f)=(x-\lambda_1)...(x-\lambda_k)$. Poiché $v=v_1+...+v_k$ con $v_i \in V_{\lambda_i}$ cioè $(f-\lambda_iI)(v_i)=0\Rightarrow \displaystyle{q(f)(v_i)=\sum^{k}_{i=1}q(f)(v_i)}=0$  e $q(f)(v_i)=(f-\lambda_1I)...(f-\lambda_iI)...()f-\lambda_kI)=(...)(f-\lambda_iI)(v_i)=0$ 
	Quindi $\forall i \in \{1,...,k\}, q(f)(v_i)=0\Rightarrow q(f)(v)=0, \forall v$

**Esercizio**:
	Mostrare che se $r(x)\in \mathbb{K}[x]$ è un polinomio irriducibile che divide $p_f(x)$, allora divide anche $q_f(x)$.
	*Suggerimento*: Usare quello che abbiamo dimostrato per $r$ di grado $1$ e quello usato nella chiusura algebrica di $\mathbb{K}$

D'ora in poi supponiamo che $p_f(x)$ abbia tutte le radici in $\mathbb{K}$.

$p_f(x)=(x-\lambda_1)^{\mu_1}\cdot ... \cdot (x-\lambda_k)^{\mu_k}$ con $\mu_i=\mu_a(\lambda_i)$ 
Per Cayley-Hamilton e Decomposizione Primaria si ha che $V=\displaystyle{\bigoplus Ker(f-\lambda_iI)^{\mu_i}}$, ossia è somma diretta di sottospazi vettoriali $f-$ invarianti.

**Osservazione**: $V_{\lambda_i}=Ker(f-\lambda_iI)\subseteq Ker(f-\lambda_iI)^{\mu_i}=V_{\lambda_i}^{gen}$

**Esempio**:
	$A=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix}\Rightarrow p_A(x)=x^2$,
	Si ha che $V_0=Span\left\{\begin{pmatrix}1\\ 0\end{pmatrix}\right\}$ e $V_0^{gen}=\mathbb{K}^2$ 
	Quindi $V=\displaystyle{\bigoplus Ker(f-\lambda_iI)^{\mu_i}=\bigoplus V_{\lambda_i}^{gen}}$  

**Osservazione**: $V^{gen}_{\lambda_i}$ è un sottospazio vettoriale $(f-\lambda_iI)-$invariante e $(f-\lambda_iI)|_{V^{gen}_{\lambda_i}}$ è nilpotente

**Esercizio 1**:
	Mostrare che $\mathbb{Q}[\sqrt{2}]$ e $\mathbb{Q}[\sqrt{3}]$ non sono campi isomorfi
	Dove $\mathbb{Q}[\sqrt{2}]=\{a+\sqrt{2}b\; | \; a,b \in \mathbb{Q}\}$ e $\mathbb{Q}[\sqrt{3}]=\{a+\sqrt{3}b\; | \; a,b \in \mathbb{Q}\}$

**Soluzione**:
	Mi chiedo se $\exists \varphi: \mathbb{Q}[\sqrt{2}]\rightarrow \mathbb{Q}[\sqrt{3}]$ tale che $\varphi(a+b)=\varphi(a)+\varphi(b)$ e $\varphi(ab)=\varphi(a)\varphi(b)$ 
	Ossia che $\varphi(1)=1\Rightarrow \varphi(\underbrace{1+...+1}_{=n})=n$, analogamente $\forall m \in \mathbb{Z}, \varphi(m)=m$ 
	Inoltre $\forall a \in \mathbb{Z}\setminus \{0\}, \varphi(aa^{-1})=\varphi(a)\varphi(a^{-1})\Rightarrow \varphi(a^{-1})=a^{-1}$
	$\Rightarrow \forall a,b \in \mathbb{Z}, b≠0,\varphi(ab^{-1})=\varphi(ab^{-1})=ab^{-1} \Rightarrow \forall \alpha \in \mathbb{Q}, \varphi(\alpha)=\alpha$  
	Se $\varphi$ esistesse, allora $\varphi(2)=2\Rightarrow \varphi(\sqrt{2}^2)=\varphi(\sqrt{2})^2$, cioè $\exists z \in \mathbb{Q}[\sqrt{2}]$ tale che $z^2=2$
	$\Rightarrow (A+\sqrt{3}B)^2=2\Rightarrow A^2+3B^2+2A\sqrt{3}B=2$ 
	Se $B=0$, $2=A^2$ ma la cosa è assurda in quanto $A\in \mathbb{Q}$
	Se $A=0$, $2=3B^2\Leftrightarrow \frac{2}{3}=B^2$ ma la cosa è assurda in quanto $B\in \mathbb{Q}$
	Se $A,B≠0$, $\frac{2-A^2-3B^2}{2AB}(\notin \mathbb{Q})=\sqrt{3}(\notin \mathbb{Q})$ 
	Dentro $\mathbb{Q}[\sqrt{2}]$ non c'è nessun elemento il cui quadrato sia $3$, cioè $x^2-3$ è irriducibile in $\mathbb{Q}[\sqrt{2}][x]\Rightarrow$$\mathbb{Q}[\sqrt{2}][x]/_{(x^2-3)}=\mathbb{Q}[\sqrt{2},\sqrt{3}]$ campo

**Esercizio 2**:
	Sia $f\in End(V)$ e sia $U\subseteq V$ un sottospazio $f$-invariante. Se $f$ è diagonalizzabile, allora $f|_U$ è diagonalizzabile

**Soluzione**:
	$f$ diagonalizzabie $\Rightarrow q_f(x)=(x-\lambda_1)\cdot ... \cdot (x-\lambda_k)$ con $\lambda_1≠\lambda_2≠...≠\lambda_k$. Voglio dimostrare che $q_{f|_U}\mid q_f$ 
	La cosa è verificata se $q_f(f|_{U})=q_f(f)|_{U}=0$ 

**Esercizio 3**:
	Sia $f \in End(V)$ tale che $f^2=f^3$. Mostrare che $f^2$ è diagonalizzabile, ma $f$ non è detto che lo sia.

**Soluzione**:
	$[V= Ker(f^2)\oplus Ker(f-I)]\Rightarrow q_f \mid x^2(x-1)$. Vediamo i casi possibili:
	- $q_f(x)=x\Rightarrow f=0\Rightarrow f^2=0$
	- $q_f(x) = x-1\Rightarrow f=I\Rightarrow f^2=I$ 
	- $q_f(x)= x^2 \Rightarrow f^2=0$ diagonalizzabile, ma $f$ non è diagonalizzabile
	- $q_f(x)=x(x-1)\Rightarrow f$ diagonalizzabile con autovalori $0,1\Rightarrow \mathscr{B}_V$ tale che $M_{\mathscr{B}_V}=\begin{pmatrix}0 & 0\\ 0 & I\end{pmatrix}\Rightarrow f^2$ è diagonalizzabile e $M_{\mathscr{B}_V}=\begin{pmatrix}0 & 0\\ 0 & I\end{pmatrix}$ 
	- $q_f(x)=x^2(x-1)\Rightarrow f$ non è diagonalizzabile. Per il Teorema di Decomposizione Primaria $V=Ker (f^2)\oplus Ker(f-I)\Rightarrow \exists \mathscr{B}_V$ tale che $M_{\mathscr{B}_V}(f^2)=\begin{pmatrix}0 &\\ & I\end{pmatrix}$ 

**Esercizio 4**:
	Determinare il polinomio caratteristico e il polinomio minimo della matrice $A=\begin{pmatrix}0 & -1 & 1\\ 1 & 2 & -1\\ 1 & 1 &0\end{pmatrix}$ 

**Soluzione**:
	Il polinomio caratteristico è $p_A(x)=det(A_x-I_3)=det\begin{pmatrix}-x & -1 & 1\\ 1 & 2-x & -1 \\ 1 & 1 & -x\end{pmatrix}=-x(-2x+x^2+1)-x+1+1-2+x=-x(x-1)^2$  
	A questo punto, tra i divisori del polinomio caratteristico, cerco il polinomio minimo $q_A(x)$
	Gli autovalori sonso $0$ e $1$, quindi per il polinomio minimo ho $2$ possibilità:
	- $x(x-1)$ che è libero da quadrati, quindi è diagonalizzabile;
	- $x(x-1)^2$ che non è libero da quadrati, quindi non diagonalizzabile;
	Per vedere quale delle due possibilità è, mi basta vedere la diagonalizzabilià.
	Poiché $m_a(0)=m_g(0)=1$, devo vedere le molteplicità di $1$. $m_a(1)=2$ e $m_g(1)=dim(V_1)=3-rg(A-I_3)=3-rg\begin{pmatrix}-1 & -1 & 1\\ 1 & 1 & -1\\ 1 & 1 & -1\end{pmatrix}=2\Rightarrow m_a(1)=m_g(1)=2$ quindi è diagonalizzabile, quindi $q_A(x) = x(x-1)$ 
	Oppure posso direttamente fare la valutazione del polinomio minimo: 
	$q_A(x)\xlongequal{?}x(x-1)\Rightarrow q_A(A)=0\Rightarrow A(A-I_3)=0\Rightarrow \begin{pmatrix}-x & -1 & 1\\ 1 & 2-x & -1 \\ 1 & 1 & -x\end{pmatrix}\begin{pmatrix}-1 & -1 & 1\\ 1 & 1 & -1\\ 1 & 1 & -1\end{pmatrix} = \begin{pmatrix}0 & 0 & 0\\ 0 & 0 & 0\\ 0 & 0 & 0\end{pmatrix}\Rightarrow$$\Rightarrow q_A(A)=0\Rightarrow x(x-1)$ .

**Esercizio 5**:
	Mostrare che il polinomio minimo di una matrice diagonale a blocchi $M=\begin{pmatrix}A & 0\\ 0 & B\end{pmatrix}$ (dove $M \in M_n(\mathbb{K}), A \in M_k\mathbb{K}, B \in M_{n-k}\mathbb{K}$) è il minimo comune multiplo di $A$ e $B$

**Soluzione**:
	*Premessa*: Se $p_1(x), p_2(x) \in \mathbb{K}[x], mcm(p_1,p_2)= r(x) \in \mathbb{K}[x]$ di grado minimo tale che $r(x)=p_1(x)r_1(x)$ e $r(x)=p_2(x)r_2(x)$, ossia è divisibile sia per $p_1(x)$ che per $p_2(x)$.
	Osserviamo che se $p$ è un polinomio $p(x)=a_0+a_1x+...+a_nx^n\Rightarrow p(M)= a_0I_n+a_1M+...+a_nM^n$, ma poiché $M^i = \begin{pmatrix}A & 0\\ 0 & B\end{pmatrix}^i = \begin{pmatrix}A^i & 0\\ 0 & B^i\end{pmatrix}, \forall i \in \mathbb{N}$. Quindi $p(M)= a_0I_n+a_1\begin{pmatrix}A & 0\\ 0 & B\end{pmatrix}+ a_2\begin{pmatrix}A^2 & 0\\ 0 & B^2\end{pmatrix}+...+a_n \begin{pmatrix}A^n & 0\\ 0 & B^n\end{pmatrix}$ Quindi si ottiene che $p(M) = \begin{pmatrix}p(A) & 0\\ 0 & p(B)\end{pmatrix}$ e di conseguenza $p(M)= 0 \Leftrightarrow p(A)=0 \wedge p(B)=0$ 
	Sia dunque $q(M)$ il polinomio minimo di $M\Rightarrow q_M(M)=0\Rightarrow q_M(A)=0$ e $q_M(B)=0\Rightarrow q_A\mid q_M$ e $q_B \mid q_M$. Si ottiene quindi che $mcm(q_A,q_B)\mid q_M$.
	(Questo lo si poteva anche vedere dal fatto che $q_M(M)=\begin{pmatrix}q_M(A) & 0\\ 0 & q_M(B)\end{pmatrix}$ con $q_M(A)=0$ e $q_M(B)=0$)
	Chiamiamo per semplicità $m=mcm(q_A,q_B)$ 
	Poiché $m=q_Ar_1=q_Br_2\Rightarrow m(M)=\begin{pmatrix}m(A) & 0\\ 0 & m(B)\end{pmatrix}=\begin{pmatrix}(q_Ar_1)(A) & 0\\ 0 & (q_Br_2)(B)\end{pmatrix} = \begin{pmatrix}q_A(A)r_1(A) & 0\\ 0 & q_B(B)r_2(B)\end{pmatrix}$, ma poiché $q_A(A)=0$ e $q_B(B)=0$ si ha che $m(M)=0\Rightarrow q_M\mid m$.
	Da queste due affermazioni si ottiene che $q_M=m$ 

**Esercizio 6**:
	1) Sia $f \in End(V)$ con $V = \mathbb{Q}-\text{spazio vettoriale}$ e con matrice $F = \begin{pmatrix}1 & 1 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{pmatrix}$ rispetto ad una base $\mathscr{B}_V$. Mostrare che esistono infiniti sottospazi $f-$invarianti di $V$
	2) Sia $g\in End(V)$ con matrice $G = \begin{pmatrix}1 & 1 & 0\\ 0 & 1 & 0\\ 0 & 0 & 2\end{pmatrix}$ rispetto ad una base $\mathscr{B}_V$. Mostrare che esistono un numero finito di sottospazi $g-$invarianti.

**Soluzione**:
	1) La dimensione di $V_1=2\Rightarrow V_1$ è un piano $\Rightarrow V_1$ contiene infiniti sottospazi di dimensione $1$ e sono $f-$invarianti in quanto $f|_{V_1}=I$ 
	2) Sia $W\subseteq V$. $W$ $g-$invariante. Si ha che gli autospazi $V_1$ e $V_2$ hanno dimensione $1$. 
		Allora la dimensione di $W$ può essere:
		- $3\Rightarrow W = V\Rightarrow g-$invariante;
		- $0 \Rightarrow W$ è banale, quindi $g-$invariante;
		- $1\Rightarrow W=span\{w\}$ e $g-$invariante $\Leftrightarrow g(w)\in W\Leftrightarrow g(w)=\lambda w$.
		- $2\Rightarrow$ il Polinomio Caratteristico di $g|_W$ divide il polinomio caratteristico di $g$, $p_g(x)=(1-x)^2(2-x)$. Il grado di $p_g | _{W}$ è $2\Rightarrow p_g|_W = (1-x)(2-x) \vee (1-x)^2$. Nel primo caso ho due avutovalori distinti, quindi $W=V_1 \oplus V_2$. Nel secondo caso per il teorema di Decomposizione Primaria ho che $W= Ker(I-g|_W)^2=Ker(I-g)^2|_{W}=Ker(I-g)^2$.
			Infatti se ho $G = \begin{pmatrix}1 & 1 & 0\\ 0 & 1 & 0\\ 0 & 0 & 2\end{pmatrix}\Rightarrow I-G = \begin{pmatrix}0 & -1 & 0\\ 0 & 0 & 0\\ 0 & 0 & -1\end{pmatrix}\Rightarrow (I-G)^2 = \begin{pmatrix}0 & 0 & 0\\ 0 & 0 & 0\\ 0 & 0 & 1\end{pmatrix}$
			Da notare che le prime due colonne della matrice sono nulle, ossia $\in W$. Infatti se $\mathscr{B}_V=\{v_1,v_2,v_3\}, W= span\{v_1,v_2\}$ 

*Con sottospazi invarianti, l'utilizzo del polinomio caratteristico è fondamentale*.

**Esercizio 7**:
	Sia $f \in End(V), V=\mathbb{K}-\text{spazio vettoriale}$. Mostrare che ogni fattore irriducibile del polinomio caratteristico di $f$ divide il polinomio minimo di $f$.

**Soluzione**:
	Per poter risolvere quest'esercizio consideriamo questo esercizio preliminare:
	*"Sia $p_1(x)\in \mathbb{K}[x]$ un polinomio irriducibile e sia $\alpha \in \mathbb{K}'\supset \mathbb{K}$ una radice di $p_1(x)$. Sia $q(x)\in \mathbb{K}[x]$ tale che abbia $\alpha$ come radice in $\mathbb{K}'$. Allora $p_1(x) \mid q(x)$"
	Sia $m=\mathcal{MCD}(p_1(x),q(x))$ in $\mathbb{K}[x]$. Poiché $p_1(x)$ è irriducibile per Ipotesi, $m=1 \vee p_1(x)$.
	Se $m=1\Rightarrow p_1$ e $q$ sono coprimi $\xRightarrow{\text{Bézout}} \exists a,b \in \mathbb{K}[x]$ tali che $p_1(x)a(x)+q(x)b(x)=1$. Ma questa affermazione posso leggerla anche in chiave di $\mathbb{K}'[x]$. Allora posso dire che $(x-\alpha)\mid p_1(x)a(x)+q(x)b(x)$, ma $(x-\alpha)\nmid 1$. Di conseguenza si ha che $m=\mathcal{MCD}(p_1(x), q(x))=p_1\Rightarrow p_1 \mid q$*
	Applicando questa cosa al polinomio caratteristico e al polinomio minimo $p_A(x)$ e $q_A(x)$. Se $\alpha \in \mathbb{K}'$ è radice di $p_A$ e $p_A$ ha un fattore irriducibile $\Rightarrow$ $\alpha$ è radice di $q_A\Rightarrow \alpha$ è un autovalore.
	Ogni autovalore è radice del polinomio minimo $q_A\Rightarrow p_1 \mid q_A$ 

**Proposizione**: Sia $A \in M_n(\mathbb{K})$ e sia $\mathbb{K}'\supset\mathbb{K}$ un'estensione. Allora il polinomio minimo $q_A\in \mathbb{K}[x]$ coincide con il polinomio minimo $q'_A$ di $A$ in $\mathbb{K}'[x]$ 
**Osservazione**: Naturalmente $q_A(0), q_A\in \mathbb{K}[x]\subset \mathbb{K}'[x]\Rightarrow q'_A\mid q_A$ 
***Dimostrazione***:
	Voglio dimostrare che $deg(q_A)≤ deg(q'_A)$
	Ho che $q'_A(x)= \alpha_0+\alpha_1x+...+\alpha_nx^n \in \mathbb{K}[x]$. Inoltre $q'_A(A) = 0\Rightarrow \alpha_0I_n+\alpha_1A+\alpha_2A^2+...+\alpha_nA^n=0$.
	Questa rappresenta una relazione di lineare dipendenza $\Rightarrow I,A,A^2,...,A^n \in M_n(\mathbb{K})$ sono linearmente dipendenti in $\mathbb{K}'$. Voglio dimostrare che sono L.D. anche in $\mathbb{K}$.
	*Il problema è quindi equivalente a "Siano $v_0,...,v_n$ vettori di un $\mathbb{K}-\text{spazio vettoriale}$ linearmente dipendenti in $\mathbb{K}'$. Allora sono vettori linearmente dipendenti su $\mathbb{K}$"*

**Esempio**:
	Siano $v_0,v_1,v_2$ vettori di $\mathbb{R}^n$, linearmente dipendenti su $\mathbb{C}$. Allora sono linearmente dipendenti su $\mathbb{R}$.
	Infatti supponiamo che non lo siano e consideriamo $a_0v_0+ a_1v_1+a_2v_2 = 0,\; a_0,a_1,a_2 \in \mathbb{C}$. Poiché $a_i = \alpha_i + i\beta_i$$\alpha_i, \beta_1 \in \mathbb{R}$. Si può scrivere $(\alpha_0 +i\beta_0)v_0+(\alpha_1 +i\beta_1)v_1+(\alpha_2 +i\beta_2)v_2=0, \; \alpha_i, \beta_i \in \mathbb{R}, \; v_i \in \mathbb{R}^n$ 
	Questa affermazione è Vera se e solo se $\alpha_0v_0+ \alpha_1v_1+ \alpha_2v_2= 0$ e $\beta_0v_0+ \beta_1v_1 + \beta_2v_2 = 0$ (Ossia separo $1$ da $i$ in quanto sono linearmente indipendenti su $\mathbb{R}$), si ottiene che $\alpha_i = 0$ e $\beta_i=0\Rightarrow a_i = 0\Rightarrow v_0,v_1,v_2$ sono linearmente indipendenti su $\mathbb{C}$ contro l'ipotesi s

**Proposizione**: Sia $\mathbb{K}$ un campo e $\mathbb{K}\supset \mathbb{K}'$ un'estensione di campi. Siano $v_1,...,v_k$ vettori in $\mathbb{K}^n$. Se $v_1,...,v_k$ sono linearmente dipendenti come vettori in $(\mathbb{K}')^n$ allora lo sono anche come vettori in $\mathbb{K}^n$.

**Esempio**:
	Due vettori $\in \mathbb{Q}^n$ sono linearmente dipendenti se sono uno multiplo dell'altro, ma il multiplo deve appartenere al campo stesso. ($p,q \in \mathbb{Q}^n$ tale che $p = \lambda q, \lambda \in \mathbb{Q}$).

***Dimostrazione 1***:
	Sia $a_1v_1+...+a_kv_k$ una combinazione lineare in $\mathbb{K}'$, ossia $a_1,...,a_k\in \mathbb{K}'$. Prendiamo una base una base $\mathscr{B}=\{\sigma_1, ..., \sigma_r\}$ di $span_\mathbb{K}=\{a_1,...,a_k\}$ (Questo è un sottospazio vettoriale di $\mathbb{K}'$, ma non necessariamente è un sottocampo) $\Rightarrow a_1 = \alpha_{1,1}\sigma_1+...+\alpha_{1,r}\sigma_{r}; \; + a_2 = \alpha_{2,1}\sigma_1+...+\alpha_{1,r}\sigma_r; \; ... \; a_k = \alpha_{k,1}\sigma_1+...+\alpha_{k,r}\sigma_r \in \mathbb{K}$. Queste non sono altro che $r$ equazioni equazioni lineari $\mathbb{K}$. 
	$\Rightarrow (\alpha_{1,1}\sigma_1+...+\alpha_{1,r}\sigma_r)v_1+...+(\alpha_{k,1}\sigma_1+...+\alpha_{k,r}\sigma_r)v_r=0 \Rightarrow \sigma_1(\alpha_{1,1}v_1+...+\alpha_{k,1}v_k)+...+\sigma_r(\alpha_{1,r}v_1+...+\alpha_{k,r}v_k)=0$ 
	Si ottengono quindi così $r$ equazioni lineari: $\begin{cases} {\alpha_{1,1}v_1+...+\alpha_{k,1}v_k=0} \\ \vdots \\ \alpha_{1,r}v_1+...+\alpha_{k,r}v_k=0 \end{cases}$ che sono tutte linearmente dipendenti, ma gli  $\alpha_i$ non possono essere tutti nulli, in quanto altrimenti si avrebbe $a_1=...=a_k=0$ 
	Quindi almeno una delle relazioni di dipendenza lineare è non banale.

***Dimostrazione 2***:
	Dire che $v_1,...,v_k \in \mathbb{K}$ sono linearmente dipendenti come elementi in $(\mathbb{K}')^n$ equivale a dire che riducendo a scala la matrice $(v_1,...,v_k)$ trovo una colonna nulla (facendo la riduzione in colonna). Ma se $v_1,...,v_k \in \mathbb{K}^n$, la matrice può ridursi a scala usando le operazioni elementari già definite in $\mathbb{K}$.

**Esempio**:
	$\begin{pmatrix} v_1^{(1)} & v_2^{(1)} & ... & v_k^{(1)}\\ \vdots & \vdots & & \vdots\\ v_1^{(n)} & v_2^{(n)} & ... & v_k^{(n)}\end{pmatrix}$. Se volessi far apparire $0$ in $v_2^{(1)}$ mi basta fare l'operazione $c_2-\frac{v_1^{(1)}}{v_2^{(1)}}c_1$ (assumendo $v_1^{(1)}≠0$). Questo mi esplica il fatto che un'estensione di campo non offre più possibilità.

## Numeri Complessi $\mathbb{C}$ 

>[!def] Definizione di Numeri Complessi $\mathbb{C}$
>$\mathbb{C}$ è l'estensione di grado $2$ di $\mathbb{R}$ generata da una radice quadrata di $-1$ che indichiamo con $i$. In altri termini $\mathbb{C}=\mathbb{R}[x]/_{(x^2+1)}$ e $i = [x]$. L'altra radice di $-1$ è necessariamente $-i$. Quindi ogni elemento $z \in \mathbb{C}$ si scrive come $z = a + ib$, dove $a,b \in \mathbb{R}$ e vengono chiamati $a$ come parte reale di $z$ (ossia $a = \Re(z)$) e $b$ come la parte immaginaria di $z$ (ossia $b = \Im(z)$).

Regole di calcolo:
	- $(a+ib)+(c+id) = (a+c) + i(b+d)$
	- $(a+bi) \cdot (c+id) = (ac-bd)+i(ab+cd)$
Inoltre $a+bi = 0 \Leftrightarrow a=0 \wedge b = 0\Rightarrow a^2+b^2=0$ 
Siccome $\mathbb{C}$ è un campo, $\forall z \in \mathbb{C}, \exists ! z^{-1} \in \mathbb{C}$ e corrisponde a $(a+ib)^{-1}=\frac{1}{a+ib}=\frac{1}{a+ib}\cdot \frac{a-ib}{a-ib}= \frac{a}{a^2+b^2}+ i\frac{b}{a^2+b^2}$ 

L'applicazione del coniugio in $\mathbb{C}: \begin{matrix}\mathbb{C} & \rightarrow & \mathbb{C}\\ z = (a+ib) & \mapsto & \overline{z} = (a-ib)\end{matrix}$ è un automorfismo di campi e per definizione:
$\overline{0} = 0,\; \overline {1} = 1, \; \overline{(z + z')}= \overline{z} + \overline{z'}, \; \overline{z\cdot z'} = \overline{z}\cdot \overline{z'},\; \overline{(\overline{z})}= z, \; z\overline{z}=(a+ib)(a-ib)= a^2+b^2$. (Si indica con $|z|=\sqrt{z\overline{z}}\Leftrightarrow |z|^2=z\overline{z}$)
*Osservazione*: $z^{-1}=\frac{\overline{z}}{|z|^2}$
Non è l'unico automorfismo di campi in $\mathbb{C}$, infatti ce ne sono tanti, ma talmente tanti che non si possono contare (indicativamente $|\mathcal{P}(\mathcal{P}(...))|$), ma nessuno è mai riuscito a vederli. Tutto questo perché sono dati dall'assioma della scelta.

**Proprietà di $|z|$**:
	- $|z|=0\Leftrightarrow z =0$ 
	- Vale la disuguaglianza triangolare $|z+w|≤ |z|+|w|$. Infatti se li si rappresenta sul piano: ![[Somma di Numeri Complessi]]
	- $|z\cdot w|= |z|\cdot |w|\Leftrightarrow |zw|=(zw)\overline{(zw)}=zw\overline{zw}=z\overline{z}w\overline{w}=|z||w|$ e $|zw|^2=|z|^2|w|^2$. 
*Da questa si ottenne che il prodotto della somma di due quadrati è una somma di quadrati (Fermat) $\Leftrightarrow (a^2+b^2)+(c^2+d^2)=(ac-bd)^2+(ad+bc)^2$. Con tre quadrati la cosa non è più valida, ma con quattro si (quaternioni di Hamilton)*.

**Rappresentazione Grafica**:
![[Argomento nei complessi]]

>[!def] Definizione di Argomento di $z \in \mathbb{C}$
> Si definisce Argomento di un numero complesso $z$ e si indica con $arg(z)$ l'angolo che che il numero fa con l'asse dei reali ed è definito a meno di multipli di $2π$ 

**Osservazione**: $arg(0)$ non è definito in quanto non ci sono né angoli né segmenti.

>[!def] Definizione di Presentazione polare di $z \in \mathbb{C}$: 
Dati $\rho \in \mathbb{R}, \rho > 0$ e $\theta \in \mathbb{R}$, $\rho(\cos\theta+i\sin\theta)$ è un numero complesso con modulo $\rho$ e argomento $\theta$. (se $\rho=1$, è un punto sulla circonferenza unitaria).

**Esempio**:
	$\rho = 2$ e $\theta = \frac{π}{3}$ è un numero complesso avente modulo $3$ e argomento $\frac{π}{3}$.

Esiste un altro modo di rappresentare i numeri complessi che è attraverso la formulazione di Eulero: $\rho e^{i\theta}$ (Questo perché deriva dallo sviluppo di Taylor $e^{i\theta} = \sum\frac{(i\theta)^n}{n!}$) 

**Osservazione**: $(\rho(\cos\theta + i \sin \theta))(\rho'(\cos \theta' + i \sin \theta))= \rho \rho'[(\underbrace{\cos \theta \cos \theta' - \sin \theta \sin \theta'}_{= \cos(\theta + \theta')})+ i(\underbrace{\cos \theta \sin \theta' + \sin \theta \cos \theta'}_{\sin(\theta + \theta')})]$. Nella presentazione polare, moltiplicare due numeri complessi corrisponde a moltiplicare tra loro i moduli e sommare gli argomenti (un'ulteriore motivazione per cui $\rho e ^{i \theta}$ è corretta).

**Radici $n-$esime di un numero complesso**:
Intanto, dalla rappresentazione polare segue che $z=\rho(\cos \theta + i \sin \theta)\Rightarrow z^n=\rho^n(\cos(n\theta)+ i \sin(n\theta))$ 

*Caso particolare*: 
	Calcoliamo le radici di $1$ ossia troviamo le soluzioni di $z^n = 1, z \in \mathbb{C}$. Intanto si può osservare che si può scomporre come $z^n-1=(z-1)(z^{-1}+z^{n-2}+...1)$ ma non sempre il secondo termine è irriducibile (infatti lo è solo se $n$ è primo).
	Se $\rho^2(\cos (n\theta) + i \sin (n\theta))=1\Rightarrow \rho = 1\wedge n\theta \equiv 0 \; (2π)$ (infatti $1 = 1(\cos 0 + i \sin 0)$) 
	L'equazione $z^n-1=0$ ha $n$ radici distinte e sono:
	$1, \cos(\frac{2π}{n})+ i \sin(\frac{2π}{n}), \cos (\frac{4π}{n})+i\sin(\frac{4π}{n}),...,\cos(\frac{(n-1)π}{n})+ i \sin(\frac{(n-1)π}{n})$, e se chiamiamo $\zeta = \cos(\frac{2π}{n})+ i \sin(\frac{2π}{n})$, allora le soluzioni diventano $1, \zeta, \zeta^2, ..., \zeta^{n-1}$ e $\zeta^n =1$ 

**Esempio**:
	![[Complessi in pentagono]]

**Osservazione**: L'insieme di tutte le radici di $1$ in $\mathbb{C}$ è un gruppo ciclico di ordine $n$ con generatore $\zeta$ ($\zeta ^a$ è generatore $\Leftrightarrow \mathcal{MCD}(a,n)=1$)

**Esempio**:
	$z^4=1 \Rightarrow z=1,i,-1,-i$ su $\mathbb{C}$

Per casi più generali $z^n=w$ e $w≠0$ ho esattamente $n$ radici distinte.
Se $w = \rho(\cos(\theta)+i\sin \theta)\Rightarrow z=\sqrt[n]{\rho^k}(\cos(\frac{\theta+2kπ}{n})+ i \sin(\frac{\theta + 2kπ}{n}))$ con $\rho>0$  

## Forme Di Jordan

>[!def] Definizione di Blocco di Jordan
> Si chiama Blocco di Jordan una matrice niltpotente di ordine $n$ la matrice $$J_n=\begin{pmatrix}0 & 1 & ... & 0\\ \vdots  & \ddots & \ddots & \vdots\\ \vdots && \ddots & 1\\ 0 & ... & ... & 0\end{pmatrix}\in M_n(\mathbb{K})\Rightarrow J_2=\begin{pmatrix}0 & 1\\ 0 & 0\end{pmatrix},\; J_3=\begin{pmatrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{pmatrix}$$

**Osservazione**: $J_n$ è una matrice nilpotente con ordine di nilpotenza $n$, cioè $J_n^n=0$ e $J_n^k≠0$ con $k \in \{1,...,n-1\}$ 

**Esempio**:
	$J_3=\begin{pmatrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{pmatrix}\Rightarrow J_3^2=\begin{pmatrix}0 & 0 & 1\\ 0 & 0 & 0\\0 & 0 & 0\end{pmatrix}\Rightarrow J_3^3=0$ 

**Osservazione**: Il rango di $J_n$ è $n-1\Rightarrow dim(Ker(J_n))=1$ 
Leggiamo $J_n$ come la matrice di un endomorfismo $g$ di $\mathbb{K}^n$ rispetto ad una base $\mathscr{B}=\{v_1,...,v_n\}$ tale che $v_1 \mapsto 0; \; v_2 \mapsto v_1; \; ... ;\; v_n \mapsto v_{n-1}\Leftrightarrow 0 \leftarrow \!| v_1 \leftarrow \!| v_2 \leftarrow \!| ... \leftarrow \!| v_n$  

**Esempio**:
	Chi è $g^2$ potrei prendere la matrice precedente e elevarla al quadrato oppure con lo schema precedente:
	$\left. \begin{matrix} 0 \leftarrow \!| v_1 \leftarrow \!| v_3 \leftarrow \!| ... \\ 0 \leftarrow \!| v_2 \leftarrow \!| v_4 \leftarrow \!| ...\end{matrix}\right\}\Rightarrow dim(Ker(g^2))=2$ 

**Osservazione**: $Ker(g)\subseteq Ker(g^2) \subseteq Ker(g^3) \subseteq ... \subseteq Ker(g^n)$ 

>[!def] Definizione di Matrice in Forma Canonica Jordan 
>Si chiama Matrice nilpotente in forma canonica di Jordan una matrice diagonalre a blocchi della forma $$J = \begin{pmatrix}J_{h_1}\\ & J_{h_2}\\ & & \ddots \\ & & & J_{h_k}\end{pmatrix}\in M_n(\mathbb{K})\; \text{con}\; h_1≥h_2≥...≥h_k, \;\displaystyle{\sum h_i= n}$$ 

**Esempio**:
	$J = \begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix} = \begin{pmatrix}J_3 & \boldsymbol{0}\\ \boldsymbol{0} & J_2\end{pmatrix}\in M_5(\mathbb{K});\; J'=\begin{pmatrix}\begin{matrix}0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0}\\\boldsymbol{0} &\boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix}= \begin{pmatrix}J_2 & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & J_2 & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & J_2\end{pmatrix}\in M_6(\mathbb{K})$ 

**Osservazione**: $h_1,...,h_k$ è una partizione di $n$. Esiste una corrispondenza biunivoca tra partizioni di $n$ e matrici nilpotenti in forma canonica di Jordan.

**Esempio**:
	$n = 4\Rightarrow \begin{matrix} (4) & & (3,1) & & (2,2) & & (2,1,1) & & (1,1,1,1)\\ \begin{pmatrix}0 & 1 & 0 & 0\\ 0 & 0 &1 &0 \\ 0 & 0 & 0 & 1\\ 0 & 0 & 0 & 0\end{pmatrix}& {} & \begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 0\end{pmatrix}& {} & \begin{pmatrix}\begin{matrix}0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0} \\ \boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix} & {} & \begin{pmatrix}\begin{matrix} 0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & 0 & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & 0\end{pmatrix} & {} & \begin{pmatrix}0 & \boldsymbol{0} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & 0 & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & 0 & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & \boldsymbol{0} & 0\end{pmatrix}\end{matrix}$ 

*Osservazione*: Equivalentemente ogni partizione $h_1≥h_2≥...≥h_k$ di $n$ può essere scritto come un diagramma di $k$ righe in cui la $i-$esima riga contiene $h_i$ scatole

**Esempio**:
	$(4) = \begin{matrix}◻\;◻\;◻\;◻\end{matrix};\quad (3,1) = \begin{matrix*}[l]◻\;◻\;◻\\◻\end{matrix*};\quad (2,2)=\begin{matrix*}[l] ◻️ \; ◻️\\ ◻️ \; ◻️\end{matrix*}; \quad (2,1,1) = \begin{matrix*}[l]◻️ \; ◻️\\ ◻️\\ ◻️\end{matrix*}; \quad (1,1,1,1)=\begin{matrix*}[l] ◻️\\ ◻️\\ ◻️\\ ◻️ \end{matrix*}$  

Naturalmente la corrispondenza fra queste scatole e le partizioni di $n$ (o equivalentemente le matrici nilpotenti in forma canonica di Jordan) è biunivoca.

**Esempio**:
	$\begin{matrix*}[l]◻️ \; ◻️ \; ◻️ \; ◻️\\ ◻️ \; ◻️ \; ◻️\\ ◻️ \; ◻️ \; ◻️\\  ◻️\\ ◻️\end{matrix*}\Rightarrow (4,3,3,1,1)$  

Questi si chiamano Diagrammi di Young.

**Osservazione**: $\begin{matrix} (4) & & (3,1) & & (2,2) & & (2,1,1) & & (1,1,1,1)\\ \begin{pmatrix}0 & 1 & 0 & 0\\ 0 & 0 &1 &0 \\ 0 & 0 & 0 & 1\\ 0 & 0 & 0 & 0\end{pmatrix}& {} & \begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 0\end{pmatrix}& {} & \begin{pmatrix}\begin{matrix}0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0} \\ \boldsymbol{0} & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix} & {} & \begin{pmatrix}\begin{matrix} 0 & 1\\ 0 & 0\end{matrix} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & 0 & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & 0\end{pmatrix} & {} & \begin{pmatrix}0 & \boldsymbol{0} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & 0 & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & 0 & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & \boldsymbol{0} & 0\end{pmatrix}\\ \Rightarrow rg=3 && \Rightarrow rg=2 && \Rightarrow rg=2 && \Rightarrow rg=1 && \Rightarrow rg=0 \end{matrix}$ 
Se si prendono le matrici $(3,1)$ e $(2,2)$, queste non sono simili, in quando $(2,2)^2=0$ e $(3,1)^2≠0$ 
L'ordine di nilpotenza è dato dall'ordine di nilpotenza del primo blocco.
Infatti con i diagrammi di Young: $(3,1)=\begin{matrix*}[l]◻️ \; ◻️ \; ◻️\\ ◻️\end{matrix*}$ e $(2,2)=\begin{matrix}◻️ \; ◻️\\ ◻️ \; ◻️\end{matrix}$, hanno rispettivamente ordine di nilpotenza $3$ e $2$.

**Osservazione** *(Scritta meglio)*: Il numero di colonne di un diagramma di Young è l'ordine di nilpotenza della matrice nilpotente in forma canonica di Jordan ad essa associata (cioè il grado del polinomio minimo).

Consideriamo una matrice nilpotente in forma canonica di Jordan e il corrispondente diagramma di Young.
$$J = \begin{pmatrix}J_{h_1}\\ & J_{h_2}\\ && \ddots \\ &&& J_{h_k}\end{pmatrix}\Longleftrightarrow \begin{matrix*}[l]◻️ \; ◻️ \dots ◻️ \; ◻️ \; ◻️ & h_1\\ ◻️ \; ◻️ ... ◻\; ◻️ & h_2\\ \vdots & \vdots\\ ◻️ \; ◻️ ... ◻️ & h_k\end{matrix*}$$Il numero di scatole nella prima colonna = $dim(Ker(J))$ (questo perché ogni riga è un blocco di Jordan e ogni blocco ha dimensione $dim(Ker(J_i))=1$)

**Esempio**:
	Sia $J = \begin{pmatrix}J_3\\ & J_3 \\ && J_2\end{pmatrix}=\begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0} & \boldsymbol{0} \\ \boldsymbol{0} &\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix}&  \boldsymbol{0}\\  \boldsymbol{0} & \boldsymbol{0}  & \begin{matrix}0 & 1\\ 0 & 0\end{matrix}\end{pmatrix} = \begin{matrix*}[l]◻️\; ◻️ \;◻️\\ ◻️ \; ◻️ \; ◻️\\ ◻️ \; ◻️\end{matrix*}$ . Si ha che $Ker(g)\subseteq Ker(g^2) \subseteq Ker(g^3)=\mathbb{K}^8$ 
	Posso pensare che $J$ sia la matrice di $g \in End(\mathbb{K}^8)$ rispetto ad una base $\mathscr{B}=\{\underbrace{v_1,v_2,v_3}_{g-\text{invariante}},\underbrace{w_1,w_2,w_3}_{g-\text{invariante}},\underbrace{z_1,z_2}_{g-\text{invariante}}\}$.
	$J_3=M(g|_{span\{v_1,v_2,v_3\}})$ con $v_3\mapsto v_2\mapsto v_1\mapsto 0$, così anche per gli altri blocchi.
	Inoltre $dim(Ker(J))= 8-rg(J)=3$ e $\mathscr{B}_{Ker}=\{v_1,w_1,z_1\}$. Il numero delle scatole nella seconda colonna= $dim(Ker(g^2))-dim(Ker(g))$ 

In generale il numero di scatole nella $i-$esima colonna = $dim(Ker(g^i))-dim(Ker(g^{i-1}))$ 

**Esempio**:
	$\begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}$ è il diagramma di Young di una matrice nilpotente $J\in M_7(\mathbb{K})$ di ordine $3$ tale che $J^3=0$ e $dim(Ker(g))=3$ 
	$J$ descrive un endomorfismo $f:\mathbb{K}^3\rightarrow \mathbb{K}^3$ rispetto ad una base $\{v_1,v_2,v_3,w_1,w_2,w_3,z_1\}$ con $Ker(f)=Span\{v_1,w_1,z_1\}$
	Inoltre $v_1\in Ker(f)\cap Im(f^2), \; w_1\in Ker(f)\cap Ker(f^2),\;z_1$ no (in quanto a destra non ci sta nulla).
	Inoltre $v_2 \in Ker(f^2)\cap Im(f^3),\; w_2 \in Ker(f^2)\cap Im(f^3)$ e sono linearmente indipendenti.

**Osservazione**: Osserviamo che se $f \in End(V)$, nilpotente:
	- $Ker(f)\subseteq Ker(f^2)\subseteq ... \subseteq Ker(f^k)=V$ (perché se $f(v)=0\Rightarrow f^2(v)=0\Rightarrow ... \Rightarrow f^k(v)=0\Rightarrow ...$)
	- $Im(f)\supseteq Im(f^2)\supseteq ... \supseteq Im(f^k)=\{0\}$ (perché se $f^2(w)\in Im(f^2)\Rightarrow w=f^2(v) = f(f(v))\in Im(f)$ e se $w \in Im(f^{i+1}(v)\Rightarrow w = f^{i+1}(v)=f(f^i(v))\in Im(f^i)$)

**Proposizione**: Due matrici $J$ e $J'$ nilpotenti e in forma canonica di Jordan sono simili se e solo se sono uguali.
***Dimostrazione***:
	$\Leftarrow)$ Ovvio, in quando "Essere uguali" implica "Essere simili"
	$\Rightarrow)$ Siano $J$ e $J'$ come nelle ipotesi e supponiamo che sono simili. Allora $J^h$ è simile a $(J')^h,  \forall h \in \mathbb{N}\Rightarrow rg(J^h)=rg((J')^h),\forall h \in \mathbb{N}\Rightarrow$ i diagrammi di Young associati a $J$ e a $J'$ sono uguali $\Rightarrow J=J'$ 

**Esempio**:
	Sia $A = \begin{pmatrix}0 & 2 & 0 & 1\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 1 & 0\end{pmatrix}$. Mostrare che $A$ è nilpotente e che è coniugata ad una matrice in forma canonica di Jordan.
	Poiché $A^2=\begin{pmatrix}0 & 0 & 1 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\end{pmatrix}$ e $A^3=\boldsymbol{0}$, $A$ è nilpotente con ordine di nilpotenza $3$, inoltre il suo rango è $2\Rightarrow dim(Ker(A))=2$. Se $A$ è coniugata ad una matrice $J$ in forma canonica di Jordan, $J$ ha diagramma di Young: $\begin{matrix*}[l] ◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}=\begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 &1 \\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 0\end{pmatrix}$. Devo trovare una base di $\mathbb{K^4}=\{v_1,v_2,v_3,v_4\}$ tale che $\begin{cases}v_3 \mapsto v_2 \mapsto v_1 \mapsto 0\\ v_4 \mapsto 0\end{cases}$ 
	Poiché $v_1 \in Ker(L_A) \cap Im(L_A^2) = Span\{e_1\}$, infatti $e_1 \in Ker(L_A)\Rightarrow A(e_1) = 0$. Posso scegliere quindi $v_1 = e_1$ 
	Dove sta $v_2$? $v_2\in Ker(L_A^2)\cap Im(L_A^2)$ tale che $L_A^2(v_2)=e_1$. Scelgo $v_2 = e_4$
	Dove trovo $v_3$? Lo posso trovare come vettore tale che $L_A(v_3)=v_2 = e_4\Rightarrow$ Scelgo $v_3 = e_3$ 
	Dove trovo $v_4$? $v_4 \in Ker(L_A)$ e deve essere linearmente indipendente con $v_1 = e_1$, allora posso scegliere $v_4 = e_2-2e_4$ *(Per trovare tutto ciò posso utilizzare la solita moltiplicazione righe per colonne e fare sistema)*.
	Una base coe la cercavamo è $\{e_1,e_4,e_3, e_2-2e_4\}$.
	La matrice associata a $L_A$ rispetto a $\mathscr{B}=M_\mathscr{B}(L_A)$ è $J$. Questa base si chiama base di Jordan.

>[!def] Definizione di Base di Jordan 
>Sia $f \in End(V)$. Una base di Jordan per $f$ è una base rispetto alla quale la matrice di $f$ è in forma canonica di Jordan. 

>[!th] Teorema 
>Ogni matrice nilpotente è $A\in M_n(\mathbb{K})$ è simile ad una e una sola matrice in forma canonica di Jordan.

***Dimostrazione***: 
	Si tratta di dimostrare che esiste una base di Jordan per l'endomorfismo $L_A$. Dimostriamolo per induzione su $n$. Se $n=1\Rightarrow A=(0)=J_1$. Sia dunque $n>1$ e assumiamo l'ipotesi induttiva: "Esiste una base di Jordan per ogni endomorfismo nilpotente di uno spazio vettoriale di dimensione $<n$". Osserviamo che essendo $A$ nilpotente, non è invertibile $\Rightarrow dim(Im(L_A))<n$. Inoltre $Im(L_A)$ è un sottospazio $L_A-$invariante ($L_A(L_A(v))=L_A(v)$).
	Infine $L_A|_{Im(L_A)}$ resta nilpotente, quindi posso applicare l'ipotesi induttiva a $L_A|_{Im(L_A)}$, cioè esiste quindi una base di Jordan per $L_A|_{Im(L_A)}=\{v_1^{(1)}, v_2^{(1)},...,v_{h_1}^{(1)},v_1^{(2)},v_2^{(2)},...,v_{h_2}^{(2)},...,v_1^{(k)},...,v_{h_k}^{(k)}\}$. I vettori $v_1^{(1)},v_1^{(2)},...,v_1^{(k)}$ sono una base di $Ker(L_A|_{Im(L_A)})=Ker(L_A)\cap Im(L_A)$. Posso completare questo insieme in una base del nucleo: $\{v_1^{(1)}, v_1^{(1)},...,v_1^{(k)},v_1^{(k+1)},...,v_1^{(k+r)}\}$. Ora devo trovare dei vettori che vadano in $v_{h_1}^{(1)},v_{h_2}^{(2)},...,v_{h_k}^{(k)}$. Poiché i vettori $v_{h_1}^{(1)},...,v_{h_k}^{(k)} \in Im(L_A), \exists v_{h_1+1}^{(1)},...,v_{h_k+1}^{(k)}\; t.c. \; L_A(v_{h_i+1}^{(i)})=v_{h_i}^{(i)}$.
	Quindi avevo una base di Jordan di $Im(L_A)$ e ho aggiunto $r+k$ vettori, ma $r+k = dim(Ker(L_A))$. Quindi in totale ho $dim(Im(L_A))+dim(Ker(L_A))=n$ per il teorema del Rango. Poiché sono $n$ che corrisponde esattamente con la dimensione di $V$, bisogna verificare che sono effettivamente tutti linearmente indipendenti e così facendo possiamo individuare una base di $\mathbb{K}^n$ che coincide esattamente con la base di Jordan.
	Dimostriamo che sono tutti L.I.: $\displaystyle{\underbrace{\sum^{h_1+1}_{i=1}a_i^{(1)}v_i^{(1)}+\sum^{h_2+1}_{i=1}a_i^{(2)}v_i^{(2)}+...+\sum^{h_k+1}_{i=1}a_i^{(k)}v_i^{(k)}}_{\text{Vettori (tranne alla posizione i+1) che erano già in }Im(L_A)}+ \underbrace{\sum^{r}_{i=1}a_1^{(k+i)}v_1^{(k+i)}}_{\text{Vettori Nuovi}}}=0$  
	Adesso applichiamo $L_A$ a tutti i vettori (tutti i vettori aggiunti dell'ultima sommatoria vanno a $0$): $\displaystyle{\sum^{h_1+1}_{i=1}a_i^{(1)}v_{i-1}^{(1)}+\sum^{h_2+1}_{i=1}a_i^{(2)}v_{i-1}^{(2)}+...+\sum^{h_k+1}_{i=1}a_i^{(k)}v_{i-1}^{(k)}}=0$ (Ossia $L_A(v_i^{(j)})=v_{i-1}^{(j)}$)
	Poiché è una combinazione lineare di vettori dell'Immagine di $L_A\Rightarrow$ $v_0^{(j)}=0, \forall i≥2, \forall j$.
	Inoltre dalla prima serie di sommatorie si ottiene che $a_1^{(1)}v_1^{(1)}+...+a_1^{(k+r)}v_1^{(k+r)}=0$, ma poiché i vettori sono una base di $Ker(L_A)\Rightarrow a_1^{(t)}=0, \forall t$.

**Corollario**: Due matrici nilpotenti sono simili se e solo se hanno la stessa forma canonica di Jordan (ossia se e solo se sono coniugate alla stessa matrice in forma canonica di Jordan)

**Osservazione**: Osserviamo che il numero di di caselle nella $k-$esima colonna $=dim(Ker(f^k))-dim(Ker(k^{f-1}))$ Poiché il numero di caselle nella $k-$esima colonna $≤$ del numero di caselle nella $(k-1)-$esima colonna, abbiamo che $dim(Ker(f^k))-dim(Ker(k^{k-1}))≤dim(Ker(f^{k-1}))-dim(Ker(f^{k-2}))≤...$
In particolare, il diagramma di Young di $f$ è determinato univocamente dalle $dim$ di $Ker(f),Ker(f^2),...,Ker(f^k)$. In particolare questo risolve il problema di decidere se due matrici nilpotenti sono simili $\forall k$.
In modo analogo, se due matrici $A$ e $B$ sono nilpotenti, $A \sim B \Leftrightarrow dim(Ker(A^k))=dim(Ker(A^k)), \forall k$ 
È un fatto soddisfacente in quanto in un numero finito di passi si riesce a verificare se due matrici sono simili.

**Esempio**:
	Se dovesse venir chiesto di trovare $f \in End(V)$ nilpotente tale che $dim(Ker(f))=2, dim(Ker(f^2))=4$ e $dim(Ker(f^3))=7$, il miglio ha autorizzato a rispondere "chiedilo a tua sorella", in quanto non esiste, e il diagramma di Young sarebbe: $\begin{matrix*}[r]◻️\; ◻️ \; ◻️\\ ◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}$, che non è ammissibile.

**Esempio**:
	Sia $f$ nilpotente. Se conosco il diagramma di Young di $f$, posso conoscere anche il diagramma di Young anche di $f^2$. Infatti mi basta sapere quali sono $dim(Ker(f))$ e $dim(Ker(f^2))$.
	$f: \begin{matrix*}[l]◻️\; ◻️\; ◻️\; ◻️\; ◻️\; ◻️\\ ◻️\; ◻️\; ◻️\; ◻️\\ ◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}\xRightarrow{f^2}\begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\; ◻️\; ◻️\\ ◻️\; ◻️\\ ◻️\; ◻️\\ ◻️\; ◻️\\ ◻️\\ ◻️\end{matrix*}$  (Le prime due colonne di $f$ sono la prima colonna di $f^2$, la terza e la quarta di $f$ sono la seconda di $f^2$ e la quinta e la sesta di $f$ sono la terza di $f^2$.

**Caso generale**: $f$ non necessariamente nilpotente, ma tutte le radici di $p_f\in \mathbb{K}$. Sappiamo già che $\displaystyle{V = \bigoplus V_{\lambda_i}^{gen}}$ dove $V^{gen}_{\lambda_i}=Ker(f-\lambda_iI)^{m_a(\lambda_i)}$. Avevamo osservato che $(f-\lambda_iI)|_{V_{\lambda_i}^{gen}}$ è nilpotente. Per ogni autovalore $\lambda_i$ prendiamo una base di Jordan $\mathscr{B}_i$ di $(f-\lambda_iI)|_{v_{\lambda_i}^{gen}}$. Chiamiamo poi la matrice di Jordan $J_{n_i}=M_{\mathscr{B}_i}(f-\lambda_iI|_{V_{\lambda_i}^{gen}})$. Ma chi è $M_{\mathscr{B}_i}(f|_{V_{\lambda_i}^{gen}})=\begin{pmatrix}\lambda_1 & 1 & 0 & ... & 0\\ 0 & \ddots & \ddots & \ddots & \vdots\\ \vdots & \ddots & \ddots & \ddots & 0\\ \vdots && \ddots & \ddots & 1 \\ 0 & ... & ... & 0 & \lambda_i\end{pmatrix} = \lambda_1I+J_{n_i}$. Inoltre, poiché gli autospazi generalizzati si ha che sono in somma diretta, quindi $\bigcup \mathscr{B}_i= \mathscr{B}$ di $V$ e $$M_\mathscr{B}(f)=\begin{pmatrix}
\begin{matrix}\lambda_1 & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& \lambda_1\end{matrix}
& \boldsymbol{0} & ... & \boldsymbol{0}\\ \boldsymbol{0} & 
\begin{matrix}\lambda_2 & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& \lambda_2\end{matrix}
& \ddots & \boldsymbol{0}\\ \vdots &\ddots & \ddots & \vdots\\ \boldsymbol{0} & ... && \begin{matrix}\lambda_k & 1\\ & \ddots & \ddots\\ && \ddots & 1\\ &&& \lambda_k\end{matrix}\end{pmatrix}$$
**Esempio (importante)**:
	Sia $\mathbb{K}=\mathbb{Q}$ e $V$ un $\mathbb{Q}-\text{spazio vettoriale}$ di dimensione $9$. Sia $f \in End(V)$ con $p_f(\lambda)=(\lambda-1)^4(\lambda+1)^3(\lambda_2)^2$. Ci sono tre autospazi generalizzati: $V_1^{gen}=Ker(f-I)^4$, $V_{-1}^{gen}=Ker(f+I)^3$ e $V_2^{gen}=Ker(f-2I)^2$ 
	*Questo perché in generale $dim(V_{\lambda_i}^{gen})=m_a(\lambda_i)$ ma lo dimostreremo dopo*.
	Prendiamo il primo autospazio generalizzato $V_1^{gen}$.
	Sappiamo che $(f-I)|_{V_1^{gen}}$ è nilpotente, quindi esiste una partizione $n_1$ di $4$ per cui $f-I|_{V_1^{gen}}$ è a forma canonica di Jordan $J_{n_1}$, ma come posso calcolarla?.
	Mi basta calcolare $dim(Ker(f-I)), dim(Ker(f-I)^2), dim(Ker(f-I)^3)$. Non mi serve calcolarlo con la funzione alla quarta perché so che la dimensione di un endomorfismo nilpotente con ordine di nilpotenza $4$ alla quarta è $4$.
	Supponiamo che $dim(Ker(f-I))=2,dim(Ker(f-I)^2)=3,dim(Ker(f-I)^3)=4\Rightarrow n_1=(3,1)$.
	Con il diagramma di Young si ottiene $\begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}$ 
	*Piccola osservazione: Per ognuno dei nuclei prima dovrei scriere $f-I|_{V_1^{gen}}$ ma sappiamo già che coincidono (i nuclei ristretto e non hanno la stessa dimensione e quello totale contiene quello ristretto, ossia coincidono)*.
	Quindi esiste una base $\mathscr{B}_1$ di $V_1^{gen}$ fatta da $4$ vettori tale che $M_{\mathscr{B}_1}(f-I|_{V_1^{gen}})=\begin{pmatrix}\begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 0\end{pmatrix}$, quindi si deduce che $M_{\mathscr{B}_1}(f|_{V_1^{gen}})=\begin{pmatrix}\begin{matrix}1 & 1 & 0\\ 0 & 1 & 1\\ 0 & 0 & 1\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 1\end{pmatrix}$ 
	Ora facciamo lo stesso procedimento anche per gli altri autospazi generalizzati:
	Consideriamo $V_{-1}^{gen}$ e calcoliamo $dim(Ker(f+I))$ e $dim(Ker(f+I)^2)$ (So già che $dim(Ker(f+I)^3)=3$
	Supponiamo sia $dim(Ker(f+I))=1$ allora necessariamente $dim(Ker(f+I)^2)=2$. Con il diagramma di Young si ottiene $◻️\; ◻️\; ◻️$ per cui $n_2=(3)$.
	Di conseguenza esiste una base $\mathscr{B}_2$ composta di tre vettori di $V_{-1}^{gen}$ tale che $M_{\mathscr{B}_2}(f+I|_{V_{-1}^{gen}})=\begin{pmatrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{pmatrix}$ sia in forma canonica di Jordan, per cui $M_\mathscr{B_2}(f|_{V_{-1}^gen})=\begin{pmatrix}-1 & 1 & 0\\ 0 & -1 & 1\\ 0 & 0 & -1\end{pmatrix}$.
	Consideriamo adesso $V_2^{gen}$ e calcoliamo $dim(Ker(f-2I))$. Supponiamo sia $dim(Ker(f-2I))=2$, quindi con il diagramma di Young $\begin{matrix}◻️\\ ◻️\end{matrix}$ da cui la partizione $n_3=(1,1)$. Si può quindi trovare una base $\mathscr{B}_3$ di due per $V_2^{gen}$ tale che la matrice $M_{\mathscr{B}_3}(f-2I|_{V_2^{gen}})=\begin{pmatrix}0 & \boldsymbol{0}\\ \boldsymbol{0} & 0\end{pmatrix}$, da cui $M_{\mathscr{B_3}}(f|_{V_2^{gen}})=\begin{pmatrix}2 & \boldsymbol{0}\\ \boldsymbol{0} & 2\end{pmatrix}$.
	Quindi se consider0 $\mathscr{B}=\mathscr{B}_1\cup \mathscr{B}_2 \cup \mathscr{B}_3$ si ottiene che: $$M_\mathscr{B}(f)=\begin{pmatrix}\begin{matrix}\begin{matrix}1 & 1 & 0\\ 0 & 1 & 1\\ 0 & 0 & 1\end{matrix}  & \boldsymbol{0}\\\boldsymbol{0}  & 1\end{matrix} & \boldsymbol{0} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}-1 & 1 & 0\\ 0 & -1 & 1\\ 0 & 0 & 1\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \boldsymbol{0} & \begin{matrix}2 & 0\\ 0 & 2\end{matrix}\end{pmatrix}$$
	Quante classi di similitudine ci sono con lo stesso polinomio caratteristico?
	Ci sono ($\#$ partizioni di $4$)$\cdot$($\#$ partizioni di $3$)$\cdot$($\#$ partizioni di $2$)$+1=5\cdot 3 \cdot 2+1=31$ 
	*Se avessi solamente polinomio caratteristico e polinomio minimo non sempre si riesce a trovare la forma canonica di Jordan, mentre se avessi anche la molteplicità geometrica si*.

Quindi, se $f \in End(V)$ tale che $p_f$ ha tutte le radici nel campo, esiste una base di Jordan tale che $M_\mathscr{B}(f)$ è in forma di Jordan, ossia è diagonale a blocchi, con ogni blocco nella forma $$\begin{pmatrix}\lambda_1 & 1 & 0 & ... & 0\\ 0 & \ddots & \ddots & \ddots & \vdots\\ \vdots & \ddots & \ddots & \ddots & 0\\ \vdots && \ddots & \ddots & 1 \\ 0 & ... & ... & 0 & \lambda_i\end{pmatrix}$$La forma di Jordan è determinata è determinata se $\lambda_1,...,\lambda_k$ sono gli autovalori da $Ker(f-\lambda_i I)^a, \forall \lambda_i, \forall a$ 
Inoltre $A,B \in M_n(\mathbb{K})$ con $p_A$ e $p_B$ con tute le radici $\lambda_1,...,\lambda_k$ sono simili se e solo se $dim(Ker(A-\lambda_i I)^a)=dim(Ker(B-\lambda_iI)^a), \forall \lambda_i, \forall a≤m_a(\lambda_i)$ 

**Proposizione**: Sia $f \in End(V)$ triangolabile, $\lambda_1, ..., \lambda_k$ gli autovalori, allora $dim(V_{\lambda_i}^{gen})=m_a(\lambda_1)$
***Dimostrazione***:
	Se $\mathscr{B}$ è una base tale che $M_\mathscr{B}(f)$ è triangolare, allora i termini sulla diagonale sono $\lambda_1,...,\lambda_k$, ossia gli autovalori. Possiamo supporre che $$M_\mathscr{B}(f)=\begin{pmatrix}\lambda_1\\ & \ddots \\ && \lambda_1\\ &&&\lambda_2\\ &&&&\ddots \\ &&&&&\lambda_2\\ &&&&&&\ddots\\ &&&&&&&\lambda_k\\ &&&&&&&&\ddots\\ &&&&&&&&&\lambda_k\end{pmatrix}$$ossia gli stessi autovalori sono in colonne vicine tra loro nella matrice.
	Allora $p_f(\lambda)=(\lambda_1-\lambda)^{d_1}\cdot ... \cdot (\lambda_k-\lambda)^{d_k}$. Chi è $Ker(f-\lambda_iI)^{d_i}?$ Questa matrice sarà data da $$\begin{pmatrix}\ddots\\ &\lambda_{i-1}-\lambda_i\\ && \ddots \\ &&& \lambda_{i-1}-\lambda_i\\ &&&& 0 \\ &&&&&\ddots \\ &&&&&&0\\  &&&&&&&\lambda_{i+1}-\lambda_i\\ &&&&&&&&\ddots\\ &&&&&&&&&\lambda_{i+1}-\lambda_i\\ &&&&&&&&&&\ddots\end{pmatrix}$$Quindi questa matrice elevata a $d_i$ avrà un blocco diagonale nel blocco di posizione $i$, mentre tutti gli altri blocchi no, di conseguenza saranno invertibili. Per questo motivo $dim(Ker(f-\lambda_iI)^{d_i})=m_a(\lambda_i)$

**Esercizio 1**:
	Costruire due matrici con lo stesso polinomio caratteristico, stesso polinomio minimo, la stessa molteplicità geometrica per ogni autovalore e che non siano simili.

**Soluzione**:
	Con le forme di Jordan è comodissimo per $m_g=n-rg(A)$. Cerco quindi due matrici in $M_n(\mathbb{K})$ nilpotenti (Tutti autovalori uguali a $0\Rightarrow p_A(x)=p_B(x)$), con diagramma di Young aventi lo stesso numero di colonne ($\Leftrightarrow q_A(x)=q_B(x)$) e di righe, ma che non siano simili.
	Mi basta cercare nelle matrici in $M_7(\mathbb{K})$.
	$A = \begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\; ◻️\\ ◻️ \; ◻️\end{matrix*}$ e $B = \begin{matrix*}[l]◻️ \; ◻️ \; ◻️\\ ◻️\; ◻️\; ◻️\\ ◻️\end{matrix*}$ , infatti $p_A(x)=p_B(x)= x^7\Rightarrow V_0=Ker(A)=Ker(B)$, $q_A(x)=q_B(x) = x^3$. Inoltre $A^3 = B^3 = 0$. Tuttavia $Ker(A^2)≠Ker(B^2)$, per cui non sono simili.

**Esercizio 2**:
	Determinare la forma canonica di Jordan della matrice $B = \begin{pmatrix}-4 & -6 & 0 & -1\\ 0 & 2 & 0 & 1\\ 1 & 1 & -4 & 0\\ 0 & 0 & 0 & 2\end{pmatrix}$

*Soluzione*: 
	Come prima cosa cerco gli autovalori.
	$p_B(x) = det(B-xI) = \begin{pmatrix}-4-x & -6 & 0 & -1\\ 0 & 2-x & 0 & 1\\ 1 & 1 & -4-x & 0\\ 0 & 0 & 0 & 2-x\end{pmatrix}=(-4-x)^2(2-x)^2=(4+x)^2(2-x)^2$. Allora $p_B(x)=0\quad \begin{matrix*}[l]\nearrow & x = -4\\ \searrow & x = 2\end{matrix*}$.
	Calcolo la dimensione degli autospazi $V_{-4}$ e $V_2$
	$B$ è simile alla matrice $J\begin{pmatrix}\begin{matrix}-4 & *\\ 0 & -4\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}2 & \circ\\ 0 & 2\end{matrix}\end{pmatrix}$, quindi per il teorema di decomposizione primaria posso lavorare con i singoli blocchi di Jordan ($\mathbb{K}^4 = Ker(B+4I)^2\oplus Ker(B-2I)^2$)
	Si ha che $* = 0 \vee 1$ a seconda dell'indice di nilpotenza di $B+4I$, in modo analogo $\circ = 0 \vee 1$ a seconda dell'indice di nilpotenza di $B -2I$.
	- $dim(V_{-4})=dim(Ker(B+4I))=4-rg(\begin{pmatrix}0 & -6 & 0 & -1\\ 0 & 6 & 0 & 1\\ 1 & 1 & 0 & 0\\ 0 & 0 & 0 & 6\end{pmatrix})=4-3=1\Rightarrow m_g(-4)=1≠m_a(-4)\Rightarrow \begin{pmatrix}-4 & *\\ 0 & -4\end{pmatrix}$ non è diagonalizzabile, di conseguenza $* =1$ 
	- $dim(V_{2})=dim(Ker(B-2I))=4-rg(\begin{pmatrix}-6 & -6 & 0 & -1\\ 0 & 0 & 0 & 1\\ 1 & 1 & -6 & 0\\ 0 & 0 & 0 & 0\end{pmatrix})=4-3=1\Rightarrow m_g(2)=1≠m_a(2)\Rightarrow \begin{pmatrix}2 & \circ\\ 0 & 2\end{pmatrix}$ non è diagonalizzabile, di conseguenza $\circ = 1$ 
	Quindi la forma canonica di Jordan è $J\begin{pmatrix}\begin{matrix}-4 & 1\\ 0 & -4\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}2 & 1\\ 0 & 2\end{matrix}\end{pmatrix}$

**Esercizio 3**:
	Determinare le possibili forme canoniche di Jordan di una matrice $A$ con polinomio caratteristico $p_A(t)=(t-2)^2(t-5)^3$ tale che $dim(V_2)=1$ e $dim(V_5)=2$

**Soluzione**:
	Sia quindi $A \in M_5(\mathbb{C})$, abbiamo che gli autovalori sono $2$ e $5$ con $m_a(2)=2$ e $m_a(5)=3$.
	Ragioniamo separatamente sui due blocchi della matrice $J = \begin{pmatrix}\begin{matrix}2\\ & 2\end{matrix} & \boldsymbol{0}\\\boldsymbol{0} & \begin{matrix}5 \\ &5 \\ && 5\end{matrix} \end{pmatrix}$.
	- $dim(V_2)=1\Rightarrow dim(Ker(V-2I))=1\Rightarrow ◻️\; ◻️\Rightarrow J^{(2)}=\begin{pmatrix}2 & 1\\ 0 & 2\end{pmatrix}$ 
	- $dim(V_5)=2\Rightarrow dim(Ker(V-5I))=2\Rightarrow \begin{matrix*}[l]◻️\; ◻️\\ ◻️\end{matrix*}\Rightarrow J^{(5)}=\begin{pmatrix}5 & 1 & 0\\ 0 & 5 & 0\\ 0 & 0 & 5\end{pmatrix}$ 
	C'è quindi una sola possibilità, che è $J = \begin{pmatrix}\begin{matrix}2& 0\\ 0& 2\end{matrix} & \boldsymbol{0}\\\boldsymbol{0} & \begin{matrix}5 & 1 & 0 \\ 0&5&0 \\ 0&0& 5\end{matrix} \end{pmatrix}$.

**Esercizio 4** (Esame: 14/06/2022):
	Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$ di dimensione $6$. Quante sono le classi di similitudine di $f \in End(V)$ tale che $f^2$ abbia polinomio minimo $p_{f^2}(\lambda)=\lambda^2$.

**Soluzione**:
	Osservo che l'unica radice del polinomio minimo di $f^2$ è $0$, $\Rightarrow f^2$ è nilpotente $\Rightarrow f$ è nilpotente quindi $M6(f)$ è nilpotente e $\in M_6(\mathbb{C})$.
	Poiché $q_{f^2}(\mathbb{C})=\lambda^2$, il diagramma di Young associato a $f^2$ deve avere necessariamente $2$ colonne.
	Elenchiamo quindi le possibilità per $f$ che garantiscano al diagramma rispetto a $f^2$ due colonne:
	*In blu i blocchi che appartengono a $Ker(f^2)$*
	$\begin{matrix}\begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\; ◻️\; ◻️\; ◻️ \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\; ◻️\; ◻️\\ {\color{blue} ◻️} \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\; ◻️\\ {\color{blue} ◻️}\; {\color{blue} ◻️} \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\; ◻️\\ {\color{blue} ◻️}\\ {\color{blue} ◻️} \end{matrix*} && \underbrace{\begin{matrix}\begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\\ {\color{blue} ◻️}\;  {\color{blue} ◻️}\; ◻️ \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\\ {\color{blue} ◻️}\;  {\color{blue} ◻️}\\{\color{blue} ◻️} \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\;{\color{blue} ◻️} \; ◻️\\ {\color{blue} ◻️}  \\{\color{blue} ◻️} \\ {\color{blue} ◻️}\end{matrix*}\end{matrix}}_{} & ... &\text{Con 2 colonne}& \\ \downarrow^{f^2} && \downarrow^{f^2} && \downarrow^{f^2} && \downarrow^{f^2} && \text{In questi casi è come nei casi prima} && f^2\text{ ne ha 1}\\ {} \\ \begin{matrix*}[l]{\color{blue} ◻️}\;◻️ \; ◻️\\ {\color{blue} ◻️}\; ◻️ \; ◻️ \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\; ◻️ \; ◻️\\ {\color{blue} ◻️}\;  ◻️ \\ {\color{blue} ◻️} \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\; ◻️ \\ {\color{blue} ◻️} \; ◻️ \\ {\color{blue} ◻️} \\ {\color{blue} ◻️} \end{matrix*} && \begin{matrix*}[l]{\color{blue} ◻️}\; ◻️ \\ {\color{blue} ◻️} \; ◻️ \\ {\color{blue} ◻️} \\ {\color{blue} ◻️} \end{matrix*} \end{matrix}$ 
	Nei primi due casi, ossia $(6)$ e $(5,1)$, non vanno bene perché in $f^2$ ha $3$ colonne, quindi $p_f(x)=x^3$, contro ipotesi. I successivi $5$ casi vanno bene perché in $f^2$ hanno $2$ colonne, mentre i successivi ne hanno una soltanto.
	Quindi ho solamente $5$ casi disponibili.

**Esercizio 5**:
	a) Dare un esempio di $A \in M_n(\mathbb{R})$ tale che $A^2$ sia diagonalizzabile e $A^3$ no
	b) Sia $A \in M_n(\mathbb{K})$ nilpotente. Mostrare che se $A^2$ è diagonalizzabile allora lo è anche $A^3$
	c) Sia $A \in M_n(\mathbb{C})$ tale che $A^2$ sia diagonalizzabile. Allora $A^3$ è diagonalizzabile.

**Soluzione**:
	1) $A = \begin{pmatrix}0 & -1\\ 1 & 0\end{pmatrix}\in M_2(\mathbb{R})\Rightarrow A^2=\begin{pmatrix}-1 & 0\\ 0 & -1\end{pmatrix}\Rightarrow A^3=\begin{pmatrix}0 & 1\\-1 & 0\end{pmatrix}\Leftrightarrow p_A(\lambda)=\lambda^2 +1 = p_{A^3}(\lambda)$. Questa può essere interpretata come la matrice di una rotazione in $\mathbb{R}^2$ di $π/2$ 
	2) $A$ nilpotente $\Rightarrow A^2$ nilpotente. Essendo $A^2$ diagonalizzabile $\Rightarrow A^2 = \boldsymbol{0}\Rightarrow A^3=\boldsymbol{0}$ 
	3) $A^2$ è diagonalizzabile $\Rightarrow V =\displaystyle{\bigoplus_{i=1}^k Ker(A^2-\lambda_iI)}=\displaystyle{Ker(A^2) \oplus (\underbrace{\bigoplus_{\lambda_i ≠ 0} Ker(A^2-\lambda_iI)}_{V_i})}$. (Decomposizione di Fitting). Applichiamo il teorema di Decomposizione Primaria su $V_i,$ con polinomio $x^2-\lambda_i=(x+\sqrt{\lambda_i})(x-\sqrt{\lambda_i})$, in quanto ogni elemento in $\mathbb{C}$ ha esattamente due radici. Quindi $V_i=Ker(A-\sqrt{\lambda_iI})\oplus Ker(A+\sqrt{\lambda_iI})$ (possono essere anche $=0$), ma questi sono autospazi di $A$. Quindi $V = \displaystyle{Ker(A^2)\oplus(\bigoplus_{\lambda_i≠0}(Ker(A-\sqrt{\lambda_iI})\oplus Ker(A+\sqrt{\lambda_iI})))}$. Ora mi basta prendere una base $\mathscr{B}^0$ di $Ker(A^2)$, per ogni $i$, una base $\mathscr{B}^{(-)}_i$ di $Ker(A-\sqrt{\lambda_i}I)$ e una base $\mathscr{B}^{(+)}_i$ di $Ker(A+\sqrt{\lambda_i}I)\Rightarrow \mathscr{B}^0\cup \mathscr{B}^{(+)}_i\cup \mathscr{B}^{(-)}_i$  per ogni $i$ è una base di autovettori di $V$ per $A^3$.

**Esercizio 6**:
	Trovare la forma di Jordan e una base di Jordan di $A = \begin{pmatrix}0 & 0 & 0 & 1\\ 1 & 0 & 1 & 0\\ 0 & 0 & 0 & 1\\ 0 & 0 & 0 & 0\end{pmatrix}$ 

**Soluzione**:
	È nilpotente (lo si può fare semplicemente con il polinomio caratteristico). Qui si vede perché ha tanti $0$. Infatti si può vedere anche che $e_1\mapsto e_2 \mapsto 0$; $e_2 \mapsto 0$; $e_3\mapsto e_2\mapsto 0$; $e_4 \mapsto e_1+e_3\mapsto 2e_2\mapsto 0$.
	Inoltre $dim(Ker(A))=4-rg(A)=4-2=2$. Quindi secondo gli schemi di Young: $\begin{matrix*}[l]◻️\; ◻️ \; ◻️\\ ◻️\end{matrix*}\; \vee\; \begin{matrix*}[l]◻️\; ◻️ \\ ◻️\; ◻️\end{matrix*}$
	Mi basta calcolare $A^2 = \begin{pmatrix}0 & 0 & 0 & 0\\ 0 & 0 & 0 & 2\\ 0 & 0 & 0 & 0\\ 0 & 0 & 0 & 0\end{pmatrix}≠ \boldsymbol{0}$.
	Quindi se $Char(\mathbb{K})≠2\Rightarrow \begin{matrix*}[l]◻️\; ◻️ \; ◻️\\ ◻️\end{matrix*}$, se invece $Char(\mathbb{K})=2\Rightarrow \begin{matrix*}[l]◻️\; ◻️ \\ ◻️\; ◻️\end{matrix*}$ .
	Cerchiamo una base di Jordan in caso $Char(\mathbb{K})≠2$.
	Il vettore più comodo da cercare è quello più a destra, perché poi mi basterà calcolare $A(v)$ per trovare gli altri vettori della base. Prendiamo per esempio come vettore $e_4$.
	In questo modo ottengo automaticamente come altri vettori della base $e_1+e_3$ e $2e_2$.
	A questo punto mi manca un vettore solo della base.
	Questo deve essere un altro vettore del nucleo che sia linearmente indipendente con gli altri vettori. $e_1-e_3$ va bene per esempio. Quindi la base $\mathscr{B}_J$ è $\{2e_2, e_1+e_3, e_4, e_1-e_3\}$ per cui la matrice rispetto a quella base è $$M_{\mathscr{B}_J}=\begin{pmatrix} \begin{matrix}0 & 1 & 0\\ 0 & 0 & 1\\ 0 & 0 & 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & 0 \end{pmatrix}$$

**Esercizio 7**:
	Sia $A = \begin{pmatrix}4 & 2 & -2 & 1\\ -5 & -3 & 1 & 1\\ 1 & 1 & 1 & 0\\ 4 & 0 & -8 & -2\end{pmatrix}$. Trovare la forma di Jordan e la base di Jordan.

**Soluzione**:
	$p_A(\lambda)=\lambda^4\Rightarrow A$ è nilpotente. Inoltre $rg(A)=2$. Anche qui ci sono due possibilità $\begin{matrix*}[l]◻️\; ◻️ \; ◻️\\ ◻️\end{matrix*}\; \vee\; \begin{matrix*}[l]◻️\; ◻️ \\ ◻️\; ◻️\end{matrix*}$ 
	Per vedere quale è il caso basta calcolare $A^2=\boldsymbol{0}$, quindi siamo nella situazione $\begin{matrix*}[l]◻️\; ◻️ \\ ◻️\; ◻️\end{matrix*}$.
	Come si trova una base di Jordan?
	Poiché i quadratini in blu $\begin{matrix*}[l]{\color{blue} ◻️} \; ◻️\\ {\color{blue} ◻️} \; ◻️ \end{matrix*}$ sono vettori $\in Ker(A) \cap Im(A)$, mi basta prendere due colonne linearmente indipendenti di $A$ e i vettori di cui sono le immagini. Ossia posso prendere $A(e_1)=\begin{pmatrix}4\\ -5 \\ 1 \\ 4\end{pmatrix}$ e $A(e_2)=\begin{pmatrix}2\\ -3\\ 1\\ 0\end{pmatrix}$. Quindi la base rispetto alla forma di Jordan è $\mathscr{B}_J=\left\{\begin{pmatrix}4\\ -5 \\ 1 \\ 4\end{pmatrix}, e_1, \begin{pmatrix}2\\ -3\\ 1\\ 0\end{pmatrix}, e_2\right\}$

**Esercizio 8**:
	Quante classe di similitudini ci sono in matrici $A\in M_6(\mathbb{K})$ tali che $A^4 = \boldsymbol{0}$ e $A^2≠ \boldsymbol{0}$ 
	*Il testo dell'esercizio può essere riscritto come: Questa Matrice $A$ è nilpotente. La condizione $A^4≠\boldsymbol{0}$ e $A^2=\boldsymbol{0}$ equivale a $q_A(\lambda)=\lambda^3$ oppure $q_A(\lambda)=\lambda^4$. Mi basta elencare tutte i possibili diagrammi con $6$ caselle, tali che la prima colonna abbia 3 o 4 caselle*.

**Soluzione**:
	Con $q_A(\lambda)=\lambda^4 \Rightarrow \begin{matrix*}[l]◻️\; ◻️\; ◻️\; ◻️\\ ◻️\; ◻️\end{matrix*}\vee \begin{matrix*}[l]◻️\; ◻️\; ◻️\; ◻️\\ ◻️\\ ◻️\end{matrix*}$. Con $q_A(\lambda)=\lambda^3 \Rightarrow \begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\; ◻️\; ◻️\end{matrix*}\vee \begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\; ◻️\\ ◻️\end{matrix*}\vee \begin{matrix*}[l]◻️\; ◻️\; ◻️\\ ◻️\\ ◻️\\ ◻️\end{matrix*}$ 
	Quindi sono $5$ le classi.

*Piccolo Ripasso*: Sia $f \in End(V)$, $p_f(\lambda)$ ha tutte le radici in $\mathbb{K}\Rightarrow p_f(\lambda)=(\lambda-\lambda_1)^{\mu_1}\cdot ... \cdot(\lambda-\lambda_k)^{\mu_k}$ con $\lambda_1,...,\lambda_k$ autovalori distinti $\exists \mathscr{B}=\{v_1,...,v_k\}$ tale che la matrice di $f$ è triangolare.
Ricordiamo la triangolarizzabilità:
Scelgo un atuovalore $\lambda_1$ e un suo autovettore. Considero $[f]:V/_{Span\{v_1\}}\rightarrow V/_{Span\{v_1\}}$. Ho che il polinomio caratteristico $p_{[f]}(\lambda)=\frac{p_f(\lambda)}{(\lambda-\lambda_1)}=(\lambda-\lambda_1)^{\mu_1-1}\cdot(\lambda-\lambda_2)^{\mu_2}\cdot ... \cdot (\lambda-\lambda_k)^{\mu_k}$ e poi si prosegue per induzione. Se $\mu_1=1$ allora si può passare direttamente al prossimo autovalore di $f$, in quanto $\lambda_1$ non è più autovalore di $[f]$. Invecese $\mu_1>1$ si ha che $\lambda_{1}$ è ancora autovalore di $[f]$, quindi posso scegliere un secondo autovettore $v_2$ di $\lambda_1$ tale che $[f]([v_2])=\lambda_1[v_2]$. Poi andando avanti così.
Dopo $\mu_1$ passi, ottengo un endomorfismo di $V/_{Span\{v_1,...,v_{\mu_1}\}}$ che ha polinomio caratteristico $(\lambda-\lambda_2)^{\mu_2}\cdot ... \cdot (\lambda-\lambda_k)^{\mu_k}$, ossia che non ha più $\lambda_1$ come autovalore.

**Esercizio 9**:
	Sia $f$ un endomorfismo con forma canonica di Jordan $\begin{pmatrix}\begin{matrix}0 & 1\\ 0 & 6\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}2 & 1\\ 0 & 2\end{matrix} \end{pmatrix}$. Mostrare che $f$ ha un numero finito di sottospazi $f-$invarianti e determinarli.
	*Tenere a mente che se $W\subsetneq V$ è $f-$invariante $\Rightarrow f|_W$ endomorfismo di $W$ indotto da $f$ ha il polinomio caratteristico $p_{f|_W}$ divide propriamente ($deg(p_{f|_W})<deg(p_f)$)*

**Soluzione**:
	Si ha che $p_f(\lambda)=\lambda^2(\lambda-2)^2$
	In genere i sottospazi di dimensione $1$ sono generati da un autovettore. In questo caso abbiamo $Ker(f)=Span\{e_1\}$ e $Ker(f-2I)=Span\{e_3\}$ ($\#2$)
	Se $dim(W)=2$ e $W$ è $f-$invariante $\Rightarrow p_{f|_W}=\lambda^2 \vee (\lambda-2)^2 \vee \lambda(\lambda-2)$:
	- Se $p_{f|_W}(\lambda)=\lambda^2\Rightarrow (f|_W)^2=0\Leftrightarrow W \subseteq Ker(f^2)$, ma $dim(Ker(f^2))=2\Rightarrow W=Ker(f^2)$
	- Se $p_{f|_W}(\lambda)=(\lambda-2)^2\Rightarrow (f|_W-2I)^2=0\Leftrightarrow W\subseteq Ker(f-2I)^2$, ma $dim(Ker(f-2I)^2)=2\Rightarrow W = Ker(f-2I)^2$ 
	- Se $p_{f|_W}(\lambda)=\lambda(\lambda-2)\Rightarrow f|_W(f|_W-2I)=0$. Per il teorema di Decomposizione Primaria applicata a $f|_W\Leftrightarrow W=Ker(f|_W)\oplus Ker(f|_W-2I)\Rightarrow W\subseteq Ker(f)\oplus Ker(f-2I)=V_0\oplus V_2$. Ma $V_0\oplus V_2$ ha dimensione $2$, quindi $W=V_0\oplus V_2\Rightarrow Ker(f)\oplus Ker(f-2I)$ $(\#3)$ 
	*Si passa per il $\subseteq$ perché passando dall'endomorfismo ristretto a $f$, cambiano le dimensioni di Dominio e Immagine, quindi, essendo $W$, di dimensione minore, allora deve essere contenuto*
	Se $dim(W)=3\Rightarrow p_{f|_W}(\lambda)=\lambda^2(\lambda-2)\vee \lambda(\lambda-2)^2$:
	- Se $p_{f|_W}=\lambda^2(\lambda-2)$ sono primi fra loro $\Rightarrow$ Per decomposizione primaria si ha che $W=Ker(f|_W)^2\oplus Ker(f|_W-2I)$, quindi $W\subseteq Ker(f)^2\oplus Ker(f-2I)$, ma poiché ha proprio dimensione $3$, quindi $W=Ker(f)^2\oplus Ker(f-2I)$ 
	In modo analogo con $p_{f|_W}=\lambda (\lambda-2)^2$  $(\#2)$
	Poi ci sono i i banali $W=\{0\}$ e $W=V$ 
	Quindi in tutto i sottospazi $f-$invarianti sono $9$

*Domanda*: Esistono vettori ciclici per quest'endomorfismo? (Ossia esiste $v\in V$ tale che $v, f(v), f^2(v), f^3(v)$ rappresenta una base di $V$, oppure "Non esistono sottospazi propri di $V$ che contiene $v$")
La risposta è si in quanto basta prendere $v=e_2+e_4\xmapsto{f}e_1+e_3+2e_4\xmapsto{f^2} 4e_3+4e_4\xmapsto{f^3}12e_3+8e_4$. Infatti la matrice data dalle potenze di $v$ è $$\begin{pmatrix}0 & 1 & 0 & 1\\ 1 & 0 & 1 & 2\\ 0 & 0 & 1 & 1\\ 0 & 0 & 3 & 2\end{pmatrix}$$il cui determinante è diverso da $0$, quindi $v$ è ciclico.

**Esercizio 10**: 
	Sia $p_f$ con tutte le radici nel campo, $f$ ha vettore ciclico $\Leftrightarrow p_f=q_f$

**Suggerimento**:
	$\Rightarrow)$ Vettore ciclico implica che $p_f=q_f$. Infatti se così non fosse si ha che $deg(q_f)<deg(p_f)\Rightarrow \exists k<dim(V)$  tale che $f^k \in Span\{v,f(v),...,f^{k-1}(v)\}$. Significa quindi che questo $Span$ non può avere $dim=dim(V)$. Nella fattispecie si ha che $\forall v, f^k(v)\in S=Span\{v,f(v),...,f^{k-1}(v)\}\Rightarrow dim(S)<dim(V)\Rightarrow v$ non è ciclico che è contro la tesi.
	$\Leftarrow)$ Se $p_f=q_f\Rightarrow \forall$ autovalore, ho un blocco di Jordan più lungo possibile $\Rightarrow$ prendendo il vettore più a destra di $V_{\lambda_i}^{gen}$ posso ottenere ogni vettore a sinistra. Quindi mi basta prendere un vettore in $V$ tale che sia la somma di questi vettori, che è ciclico (Ossia non sta in nessun sottospazio invariante, questo è ciò che assicura che in alcuni casi esistono un numero finito di sottospazi invarianti).

**Esercizio 11**:
	1) $A,B\in M_n(\mathbb{R})$. Viste $H\in GL_n(\mathbb{C})$ tale che $B=HAH^{-1}\Rightarrow \exists C\in GL_n(\mathbb{R})$ tale che $B = CAC^{-1}$
	2) $A \in M_n(\mathbb{K})$ è sempre simile alla sua trasposta (Assunto che $p_A$ abbia tutte le radici in $\mathbb{K}$)

**Soluzione**:
	2) Per la teoria della Forma di Jordan delle matrici, se ho due matrici con $m_a(\lambda_i)\Rightarrow \forall$ autovalore, $Ker(f-\lambda_iI)^k$ con $k \in \{1,...,m_a(\lambda_i)\}$ le dimensioni devono essere uguali. 
		Infatti siano $A_1,A_2 \in M_n(\mathbb{K})$ con lo stesso polinomio caratteristico $(\lambda-\lambda_1)^{d_1}\cdot ... \cdot (\lambda-\lambda_k)^{dk}$, si ha che $A_1\sim A_2 \Leftrightarrow \forall i \in \{1,...,k\}$ e $\forall a \in \{1,...,d_i\}$, $dim(Ker(A_1-\lambda_iI)^a)=dim(Ker(A_2-\lambda_iI)^a)$ da qui so come trovare i diagrammi di Young, che coincidono.
		Quindi, prendiamo $A$ e $A^T\Rightarrow p_A(\lambda)=p_{A^T}(\lambda)$ *In quanto si ha che $det(A-\lambda I)=det(A^T-\lambda I)$*
		È vero che $\underbrace{dim(Ker(A-\lambda_iI)^a)}_{n-rg(A-\lambda_i)^a}=\underbrace{dim(Ker(A^T-\lambda_iI)^a)}_{n-rg(A^T-\lambda_iI)^a=n-rg((A-\lambda_iI)^a)^T=n-rg(A-\lambda_i I)}$?  
		Non solo è vero, ma è una conseguenza ovvia del fatto che il rango colonna coincide con il rango righe
	1) Ciò è valido anche con $\mathbb{R}=\mathbb{K}$ un qualsiasi campo e $\mathbb{C}=\mathbb{K}'$ una qualsiasi estensione di campo di $\mathbb{K}$
		*Osservazione Preliminare*: 
			Può benissimo capitare che data $C \in \mathbb{C}$ sia invertibile ma, $\Re(C)$ e $\Im(C)$ non lo siano. Infatti basta prendere $\begin{pmatrix}1 & 0\\ 0 & i\end{pmatrix}\in M_2(\mathbb{C})$, ma $E_1$ e $iE_4$ non lo sono.
		Scriviamo quindi $H$ come $H_1+H_2$ con $H_1,H_2 \in M_n(\mathbb{R})$ per cui $B=HAH^{-1}\Leftrightarrow BH=HA$ che è lineare in su $H$. Quindi, con la nuova scrittura di $H\Rightarrow B(H_1+iH_2)=(H_1+iH_2)A\Rightarrow \underbrace{BH_1-H_1}_{\in M_n(\mathbb{R})}+i\underbrace{(BH_2-H_2A)}_{\in M_n(\mathbb{R})}=0$, da cui si ha che $\begin{cases}BH_1=H_1A\\ BH_2=H_2A\end{cases}$. Se entrambe le matrici $H_1$ e $H_2$ fossero invertite avremmo finito, ma la cosa non è vera per l'osservazione preliminare. Per ogni $t \in \mathbb{R}:\; \; B(H_1+t_H2)=(H_1+tH_2)A$. Basta mostrare che $\exists t \in \mathbb{R}$ tale che $H_1+tH_2$ è invertibile. Sia quindi $h(t)=det(H_1+tH_2)$ un polinomio in $\mathbb{R}[t]$ non nullo (in quanto il determinante della è non nullo), quindi tale $t$ esiste in quanto $\mathbb{K}$ è un campo infinito (sicuro ne trovo uno), di conseguenza ho alpiù $n$ radici.

**Esercizio 12**:
	Sia $char(\mathbb{K})=0$. Siano $A,B \in M_n(\mathbb{K})$ tale che $A$ commuta con $AB-BA$ (ossia con il commutatore di $A$ e di $B$, che viene indicato anche con $[A,B]$) $\Rightarrow [A,B]$ è nilpotente.

*Soluzione*:
	Se $C$ è nilpotente $\Rightarrow tr(C)=0$ ma è anche vero che $C$ è nilpotente $\Leftrightarrow tr(C^k)=0, \forall k \in \mathbb{N}$ 
	A questo punto basta fare vedere che $tr((AB-BA)^a)=0$. Mi basta anche $2$ per il teorema con $(⭑)$
	$tr((AB-BA)^2)\xrightarrow{\text{Proprietà Distributiva e traccia lineare}} tr((AB-BA)AB)-tr((AB-BA)BA)$ e poiché commuta si ha che $tr(A(AB-BA)B)-tr(AB(AB-BA))=0$.
	Poi si prosegue per induzione

**Teorema $(⭑)$**: Siano $\lambda_1,...,\lambda_n$ elementi di un campo a caratteristica $0$ tali che $\forall a, \lambda_1^a+...+\lambda_n^a=0\Rightarrow \lambda_1=...=\lambda_n$
***Dimostrazione***:
	Si fa per induzione: 
	se $n=2\Rightarrow \lambda_1+\lambda_2=0 \wedge \lambda_1^2+\lambda_2^2=0\Rightarrow \lambda_1\lambda_2=\displaystyle{\frac{(\lambda_1+\lambda_2)^2-(\lambda_1^2+\lambda_2^2)}{2}}=0\Rightarrow \lambda_1=\lambda_2=0$ 
	Poi si prosegue per induzione

****

Ora, considera che stiamo lavorando in un campo $\mathbb{K}$ con caratteristica $0$. Ciò significa che non esiste alcun numero naturale $k$ tale che $k\lambda_1 = 0$ a meno che $\lambda_1 = 0$. Questo è un fatto importante, noto come la caratteristica del campo, e implica che se otteniamo $k\lambda_1^a + \lambda_{k+1}^a = 0$ con $\lambda_1 = \lambda_2 = \ldots = \lambda_k$, allora deve essere vero che $\lambda_1 = \lambda_{k+1}$.

In altre parole, il fatto che tutti gli elementi $\lambda_1, \lambda_2, \ldots, \lambda_k$ siano uguali implica che anche $\lambda_1$ è uguale a $\lambda_{k+1}$. Quindi, $\lambda_1 = \lambda_2 = \ldots = \lambda_k = \lambda_{k+1}$.
## Forme Bilineari

Prima di parlare di Forme Bilineari, bisogna fare un importante assunto, ogni campo $\mathbb{K}$ preso è a caratteristica diversa da $2$.

>[!def] Definizione di Forma Bilineare 
>Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$ di dimensione finita. Una forma bilineare su $V$ è una funzione $\beta: V \times V \rightarrow \mathbb{K}$ che gode delle seguenti proprietà: $\forall v_1,v_2,v_3 \in V, \forall \alpha_1,\alpha_2 \in \mathbb{K}$
>	- $\beta(\alpha_1 v_1+ \alpha_2 v_2, v_3)=\alpha_1 \beta(v_1,v_3)+\alpha_2 \beta(v_2,v_3)$
>	- $\beta(v_3, \alpha_1 v_1+ \alpha_2 v_2)=\alpha_1 \beta(v_3,v_1)+\alpha_2 \beta(v_3,v_2)$

**Pericolo**: $\beta$ non è una funzione lineare $V\times V \rightarrow \mathbb{K}$ 

**Esempio**:
	$V = \mathbb{K}^2$.
	$\beta_1\left(\begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=x_1y_1+x_2y_2$ è una forma bilineare.
	$\beta_1\left(\begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=x_1y_2-x_2y_1$ è un'altra forma bilineare 
	Verifichiamo che sono forme bilineari.
	Prendo $v_3=\begin{pmatrix}y_1\\ y_2\end{pmatrix}, v_1=\begin{pmatrix}x'_1\\ x'_2\end{pmatrix}, v_2=\begin{pmatrix}x''_1\\ x''_2\end{pmatrix}$ 
	Voglio calcolare $\beta_1\left(\alpha_1\begin{pmatrix}x'_1\\ x'_2\end{pmatrix}+\alpha_2\begin{pmatrix}x''_1\\ x''_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=\beta_1 \left( \begin{pmatrix} \alpha_1x'_1+\alpha_2x''_1\\ \alpha_1x'_2+\alpha_2x''_2 \end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix} \right)=y_1(\alpha_1x_1'+\alpha_2x_1'')+y_2(\alpha_1x_2'+\alpha_2x_2'')=$$=\alpha_1(x_1'y_1+x_2'y_2)+\alpha_2(x_1''y_1+x_2''y_2)=\alpha_1 \beta_1\left( \begin{pmatrix}x_1'\\ x_2'\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)+ \alpha_2 \beta_1 \left( \begin{pmatrix}x_1''\\ x_2''\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)$, l'altra proprietà è uguale
	Con $\beta_2$ non è la stessa cosa $\beta_2\left( \begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=x_1y_2-x_2y_1=-\beta\left(\begin{pmatrix} y_1\\ y_2\end{pmatrix}, \begin{pmatrix}x_1\\ x_2\end{pmatrix} \right)$ 

**Osservazione**: Sia $A\in M_n(\mathbb{K})$. La funzione $\beta_A:\mathbb{K}^n\times \mathbb{K}^n\times ... \times \mathbb{K}^n\rightarrow \mathbb{K}$ definita come $\beta_A(x,y)=x^TAy$ è bilineare.
***Dimostrazione***:
	Calcoliamo $\beta_A(\alpha_1 x_1+ \alpha_2 x_2, y)$ con $\alpha_1, \alpha_2 \in \mathbb{K}, x_1, x_2, y\in \mathbb{K}^n=(\alpha_1 x_1 + \alpha_2 + x_2)^TAy=(\alpha_1 x_1^T + \alpha_2 + x_2^T)Ay=$$=(\alpha_1 x_1^T)Ay+ (\alpha_2x_2^T)Ay=\alpha_1 \beta_A(x_1, y)+ \alpha_2\beta_A(x_2,y)$
	Analogamente: $\beta_A(x, \alpha_1 y_1+\alpha_2 y_2)=x^TA(\alpha_1 y_1+ \alpha_2 y_2)=x^TA(\alpha_1y_1)+x^TA(\alpha_2x_2)=\alpha_1\beta_A(x, y_1)+ \alpha_2\beta_A(x, y_2)$ 

**Osservazione**: Chi sono le matrici corrispondenti dell'esempio precedenti?
$\beta_1: A=\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}\Rightarrow \begin{pmatrix}x_1 & x_2\end{pmatrix}\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}\begin{pmatrix}y_1 \\ y_2\end{pmatrix}=\begin{pmatrix}x_1 & x_2\end{pmatrix}\begin{pmatrix}y_1 \\ y_2\end{pmatrix}=x_1y_1+x_2y_2$ 
$\beta_2: A=\begin{pmatrix}0 & 1\\ -1 & 0\end{pmatrix}\Rightarrow \begin{pmatrix}x_1 & x_2\end{pmatrix}\begin{pmatrix}0 & 1\\ -1 & 0\end{pmatrix}\begin{pmatrix}y_1 \\ y_2\end{pmatrix}=\begin{pmatrix}x_1 & x_2\end{pmatrix}\begin{pmatrix}y_2 \\ -y_1\end{pmatrix}=x_1y_2-x_2y_1$ 

**Osservazione**: Esiste un solo caso in cui $\beta_2\left( \begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix} \right)=\text{det}\!\begin{pmatrix}x_1 & y_1\\ x_2 & y_2\end{pmatrix}$ 

>[!def] Definizione di Prodotto Scalare Standard 
>In generale la forma bilineare $\beta(x,y)=x^Ty$ si dice prodotto scalare standard. (Ha senso solo su $\mathbb{K}^n$. In altri casi il miglio è triste). 
>Analogamente $$A=\begin{pmatrix}0 & 1 &&\\ -1 & 0\\ & & \ddots\end{pmatrix}\in M_{2n}(\mathbb{K})$$la forma bilineare $\beta(x,y)=x^TAy$ si dice forma simplettica standard.

*Nota*: Non si comportano come le Matrici si comportano con gli Endomorfismi. Per poterli  capire serve il duale.

>[!def] Definizione di Matrice Associata ad una forma bilineare 
>Sia $\beta$ una forma bilineare su $V=\mathbb{K}-\text{spazio vettoriale}$. Prendiamo $\mathscr{B}=\{v_1,...,v_n\}$ base di $V$. La matrice $M_\mathscr{B}(\beta)$ si chiama matrice associata a $\beta$ rispetto alla base $\mathscr{B}$ ed è definita come $(M_\mathscr{B}(\beta))_{i,j}=\beta(v_1,v_j)\in M_n(\mathbb{K})$ 

**Osservazione**: Conoscendo $M_\mathscr{B}(\beta)$ posso calcolare $\beta$ su qualsiasi coppia di vettori $\beta(u,w)$ dove $u = x_1v_1+...+x_nv_n$ e $w = y_1v_1+...+y_nv_n$. Ma questo è uguale a $\beta(x_1v_1+...+x_nv_n,\; y_1v_1+....+y_nv_n)$. Tramite la proprietà distributiva si ha che $\displaystyle{\sum^n_{i = 1}x_i \beta(v_i, y_1v_1+...+y_nv_)=\sum^n_{i = 1}x_i \left(\sum^n_{j = 1}y_i \beta(v_i, v_j)\right)=\sum^n_{i,j = 1}x_iy_j \beta(v_i, v_j)}$. Ma posso scriverla come prodotto di matrici $\displaystyle{\sum^n_{i,j=1} x_iy_jC_{i,j}}, C \in M_n(\mathbb{K})$. Andando a vedere nel dettaglio $\begin{pmatrix}\vdots \\ \begin{matrix}c_{i,1} & c_{i,2}& ... & c_{i,n}\end{matrix}\\ \vdots\end{pmatrix}\begin{pmatrix}y_1\\ \vdots \\ y_n\end{pmatrix}=c_{i,1}y_1+...+c_{i,n}y_n$. Quindi si ottiene che $\displaystyle{\sum^n_{j = 1}y_j \beta(v_i,v_j)=M_{\mathscr{B}}(\beta)y_i\xRightarrow{\text{Da cui}} \sum^n_{i,j=1} x^TM_{\mathscr{B}}(\beta) y}$. Quindi questo calcolo mostra che $\beta(u,w)$ si calcola $x^TM_\mathscr{B}(\beta)y$ dove $x=$ vettore coordinate di $u$ rispetto a $\mathscr{B}$ e $y=$ vettore coordinate di $w$ rispetto a $\mathscr{B}$.

>[!def] Definizione di $Bil(V)$
>$Bil(V)=\{\beta \text{ forme bilineari su }V\}$. Si definisce su $Bil(V)$ una struttura di $\mathbb{K}$ spazio vettoriale ponendo $(\beta_1+\beta_2)(u, w)\xlongequal{def}\beta_1(u, w)+\beta_2(u, w)$  e $(\lambda \beta)(u,w)= \lambda(\beta(u,w))$ 

**Proposizione**: Scelta una base $\mathscr{B}$ di $V$, l'applicazione $\begin{matrix}Bil(V) & \rightarrow & M_n(\mathbb{K})\\ \beta & \mapsto & M_n(\beta)\end{matrix}$ è un isomorfismo di spazi vettoriali e $dim(Bil(V))=(dim(V))^2$

>[!def] Definizione di forme bilineari simmetriche e antisimmetriche 
>Una forma bilineare si dice simmetrice se $\beta(u,w)=\beta(w,u), \forall u,w\in V$. Si dice invece antisimmetrica o alternata se $\beta(u,w)=-\beta(w, u)$ (per questo motivo si richiede che la caratteristica del campo sia diverso da $2$)

**Osservazione**: $\beta$ è simmetrica $\Leftrightarrow$ qualunque sia $\mathscr{B}$, $M_\mathscr{B}(\beta)$ è simmetrica. Analogamente $\beta$ è antisimmetrica $\Leftrightarrow \forall \mathscr{B}$ di $V, M_\mathscr{B}(\beta)$ è antisimmetrica.
***Dimostrazione***:
	Vediamolo per $\beta$ simmetrica (per l'antisimmetrica cambia giusto un segno).
	$\Rightarrow)\; \beta$ simmetrica $\Rightarrow (M_\mathscr{B}(\beta))_{i,j}=\beta(v_i, v_j)=\beta(v_j, v_i)=(M_\mathscr{B}(\beta))_{j,i}=(M\mathscr{B}(\beta)_{i,j}))^T$. Quindi è simmetrica.
	$\Leftarrow)$  Supponiamo $M_\mathscr{B}(\beta)$ simmetrica. Mostriamo $\beta(u, w)=\beta(w, u), \forall u,w \in V$. Se $u = x_1v_1+...+x_nv_n$ con $x = \begin{pmatrix}x_1\\ \vdots\\ x_n\end{pmatrix}$ e $w = y_1v_1+...+y_nv_n$ e $y = \begin{pmatrix}y_1\\ \vdots\\ y_n\end{pmatrix}$. Quindi $\beta(u,w)=x^TM_\mathscr{B}(\beta)y$ e $\beta(w, u)=y^TM_\mathscr{B}x$ ma $(x^TM\mathscr{B}(\beta)y)^T=y^TM_\mathscr{B}x$, ma per ipotesi $M_\mathscr{B}(\beta)$ è simmetrica $(\underbrace{x^TM_{\mathscr{B}}y}_{\beta(u,w)})^T=\underbrace{y^TAx}_{\beta(w, u)}$ 

**Osservazione**: Sia $Sym^2(V)=\{\text{Forme Bilineari Simmetriche di }V\}$ e $Alt^2(V)=\{\text{Forme Bilineari Alternate di }V\}$. Questi sono due sottospazi vettoriali di $Bil(V)$ tali che $Bil(V)=Sym^2(V)\oplus Alt^2(V)\Rightarrow$ Ogni forma bilineare $\beta$ si scrive in modo unico come somma di una Forma Bilineare Simmetrica e una Forma Bilineare Alternata $\beta(u,w)=\frac{1}{2}(\beta(u,w)+\beta(w, u))+ \frac{1}{2}(\beta(u,w)-\beta(w,u))\Leftrightarrow \beta^S+ \beta^A$.

**Esempio**:
	$\beta_A$ con $A=\begin{pmatrix}1 & 1\\ 0 &1 \end{pmatrix}\Rightarrow \beta_A\left( \begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=\begin{pmatrix}x_1 & x_2\end{pmatrix} \begin{pmatrix}1 & 1\\ 0 & 1\end{pmatrix}\begin{pmatrix}y_1 \\ y_2\end{pmatrix}=x_1y_1+x_1y_2+x_2y_2$.
	Posso scrivere $A=\frac{1}{2}(A+A^T)+\frac{1}{2}(A-A^T)$ dove $A^T=\begin{pmatrix}1 & 0\\ 1 & 1\end{pmatrix}$
	Quindi $\beta^S=\beta_{\begin{pmatrix}1 & \frac{1}{2}\\ \frac{1}{2} & 1\end{pmatrix}}$ e $\beta^A=\beta_{\begin{pmatrix}0 & \frac{1}{2}\\ -\frac{1}{2} & 0\end{pmatrix}}\Rightarrow \beta^S\left(\begin{pmatrix}x_1\\ x_2\end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix}\right)=x_1y_1+\frac{1}{2}x_1y_2+\frac{1}{2}x_2y_1+x_2y_2$  e $\beta_A\left(\begin{pmatrix}x_1\\ x_2 \end{pmatrix}, \begin{pmatrix}y_1\\ y_2\end{pmatrix} \right)=\frac{1}{2}x_1y_2-\frac{1}{2}x_2y_1$ 

*Nota*: Noi studieremo solo le forme bilineari riflessive

>[!def] Definizione di Forma Bilineare Degenere
>Sia $\beta$ una forma bilineare riflessiva. Si dice che $\beta$ è degenere se $\exists v \in V, v ≠0$ tale che $\beta(v,w)=0, \forall w \in V$.

**Esempio**:
	La forma bilineare standard su $\mathbb{K}^n$ è non degenere e la sua matrice associata è $M = I_n$

**Esempio**:
	La forma bilineare nulla è degenere.
	$\beta_A$ con $A=\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}$ è degenere: $\beta_A\left( e_2, \begin{pmatrix}x_1\\ x_2\end{pmatrix} \right) = \begin{pmatrix}0 & 1\end{pmatrix}\begin{pmatrix}1 & 0\\ 0 & 0\end{pmatrix}\begin{pmatrix}x_1\\ x_2\end{pmatrix}=\begin{pmatrix}0 & 1\end{pmatrix}\begin{pmatrix}x_1 & 0\\ 0 & 0\end{pmatrix}=\boldsymbol{0}$  
	Se $A=I_2$, $\beta_A$ (ossia il prodotto scalare standard) non è degenere

>[!def] Definizione di Radicale di $\beta$ 
>Sia $\beta$ riflessiva. L'insieme dei $v \in V$ tale che $\beta(v,w)=0, \forall w \in V$ è un sottospazio vettoriale di $V$ che si chiama Radicale di $\beta$ e si indica con $rad(\beta)$.
>*Infatti*: 
>	- $0 \in rad(\beta)\Rightarrow \beta(0,w)=0, \forall w \in V$ 
>	- Se $v_1,v_2 \in rad(\beta)$ e $\lambda_1,\lambda_2 \in \mathbb{K}\Rightarrow \beta(\lambda_1v_1+\lambda_2v_2,w)=\underbrace{\lambda_1v_1w}_{0 \Leftarrow v_1 \in rad(\beta)}+\underbrace{\lambda_2v_2w}_{0 \Leftarrow v_2 \in rad(\beta)}=0\Rightarrow \lambda_1v_1+\lambda_2v_2 \in rad(\beta)$ 

**Proposizione**: $\beta$ non degenere $\Leftrightarrow rad(\beta)=\{0\}$
	*Infatti* $dim(rad(\beta))$ è strettamente correlato a vedere se $\beta$ è degenere o meno.

**Esempio**:
	Consideriamo $\beta:M_n(\mathbb{Q}) \rightarrow  M_n(\mathbb{R}), \beta(X,Y) = tr(XY)$. È degenere? _Questa domanda può essere tradotta con: Chi è $rad(\beta)?$_
	$rad(\beta)= \{X \in M_n(\mathbb{R})\; | \; tr(XY) = 0, \forall Y \in M_n(\mathbb{R})\}$ ma tra queste matrici c'è anche $X^T$, quindi $tr(XX^{T})=0$, ma $tr(XX^T)=\displaystyle{\sum^n_{i = 1}(xx^T)_{i,j} =0 \Rightarrow \sum^n_{i,j = 1}x_{j,i}x_{j,i}^T = 0 \Leftrightarrow \sum^n_{i,j = 1}x^2_{j,i}= 0 \Leftrightarrow x_{j,i}=0 \forall i,j \Rightarrow X=0\Rightarrow rad(\beta)=\{0\}}$ 

**Esempio**:
	Se $\beta$ è antisimmetrica su $V$ spazio vettoriale di $dim(V)=2k+1\Rightarrow \beta$ è degenere
	Infatti se $M=M_\mathscr{B}(\beta)\Rightarrow M = -M^T\Rightarrow det(M) = det(-M^T) = (-1)^{2k+1}\underbrace{det(M^T)}_{det(M)}=-det(M) = 0$  

Perché si richiede che $\beta$ sia riflessiva? In caso non lo fosse si creerebbero $rad_{dx}(\beta)$ e $rad_{sx}(\beta)$ che nella maggior parte dei casi non coincidono.

*Che legame c'è tra Dualismo e Bilinearità?*
Fissato un qualsiasi $u \in V$, l'applicazione $w \mapsto \beta(u,w)$ è lineare da $V \rightarrow \mathbb{K}$, cioè è un elemento $\varphi_u\in V^*$.
Inoltre $\beta(w,\lambda_1u_1+\lambda_2u_2)=\varphi_{\lambda_1u_1+\lambda_2u_2}(w)=(\lambda_1\varphi_{u_1}+\lambda_2\varphi_{u_2})(w)\Rightarrow$ L'applicazione $\begin{matrix}V & \rightarrow & V^*\\ u & \mapsto & \varphi_u \end{matrix}$ è lineare
Quindi si può dire che ad ogni forma bilineare $\beta$ su $V$, possiamo definire $B\in Hom(V,V^*)$ come $B(u)(w)=\beta(w,u)$ 
Viceversa, se ho una applicazione $B \in Hom(V,V^*)$ le posso associare $\beta \in Bil(V)$ come $\beta(w,u)\xlongequal{\text{def}}B(u)(w)$ 
In questo modo ho una corrispondenza naturale tra $Bil(V)$ e $Hom(V,V^*)$

**Proposizione**: Siano $\mathscr{B}$ base di $V$, $\mathscr{B}^*$ la sua base duale e $\beta$ una forma bilineare. Allora $M_\mathscr{B}(\beta)=M_{\mathscr{B}^*}^{\mathscr{B}}(B)$ 
***Dimostrazione***:
	Sappiamo che $B(u)(w)=\beta(w,u)$
	Piccolo ripasso: se $\mathscr{B}_V=\{v_1,...,v_n\}$ e $\mathscr{B}^*=\{v^*_1, ...,v^*_n\}$  la sua duale. Sia $\varphi\in V^*$. Le sue coordinate rispetto a $\mathscr{B^*}$ sono $\begin{pmatrix}\varphi(v_1)\\ \vdots \\ \varphi(v_n)\end{pmatrix}$ 
	Ora costruiamo $M_{\mathscr{B^*}}^{\mathscr{B}}(B)$ 
	Sulla $i-$esima colonna devo mettere le coordinate di $\underbrace{B(v_i)}_{\in V^*}$ rispetto a $\mathscr{B^*}$ che sono $$\begin{pmatrix}B(v_i)(v_1)\\ B(v_i)(v_2)\\ \vdots \\ B(v_i)(n)\end{pmatrix}=\begin{pmatrix}\beta(v_1,v_i)\\ \beta(v_2,v_i)\\ \vdots\\ \beta(v_n, v_i)\end{pmatrix}=i-\text{esima colonna di }M_\mathscr{B}(\beta)$$

**Osservazione**: Sia $\beta$ riflessiva. $rad(\beta)=Ker(B)=\{v \in V \; \mid \; \beta(w,v)=B(v)(w)=0, \forall w \in V\}\Rightarrow B(v)$ è l'elemento $0$ di $V^*$. Quindi in particolare $\beta$ è non degenere $\Leftrightarrow M_\mathscr{B}(\beta)$ è invertibile, quindi $det(M_\mathscr{B}(\beta))≠0$, quindi ha senso parlare di Rango di $\beta=dim(Im(B))$ 

*Come dipende $M_\mathscr{B}(\beta)$ dalla scelta di $\mathscr{B}$?*
Lo facciamo con calcolo diretto 
	Sia $\mathscr{B}'=\{v_1',...,v_n'\}$ un'altra base di $V$. Quindi $(M_\mathscr{B'}(\beta))_{i,j}=\beta(v_i,v_j)$. Poiché $M_\mathscr{B}^{\mathscr{B}'}(id)=A=(a_{i,j})$ (per pura comodità di notazione), $v_i = \displaystyle{\sum_{k = 1}^n a_{k,i}v_k}$, per cui $\beta(v_i', v_j')=\displaystyle{\beta \left(\sum_{k = 1}^n a_{i,k}v_k, \sum_{\ell = 1}^n a_{\ell,j}v_\ell \right)=\sum_{\ell, j = 1}^{n} a_{k,i} a_{\ell, j}\underbrace{\beta(v_k, v_\ell)}_{M_{\mathscr{B}(\beta)_{k, \ell}}}\Rightarrow \sum_{k, \ell = 1}^n a_{k,i} a_{\ell, j} \cdot M_\mathscr{B}(\beta)_{k, \ell} = }$ $=\displaystyle{\underbrace{\sum_{k = 1}^n a_{k,i}}_{(A^T)_{i,k}}\cdot \underbrace{\sum_{\ell = 1}^n M_{\mathscr{B}}(\beta)a_{\ell, k}}_{\text{Elemento k,i di }M_\mathscr{B}(\beta)A}}\Rightarrow \beta(v_i', v_j')=(A^TM_\mathscr{B}(\beta)A)_{i,j}$. Quindi $M_{\mathscr{B}'}(\beta)=M^{\mathscr{B}'}_{\mathscr{B}}(id)\cdot M_\mathscr{B}(\beta)\cdot M^{\mathscr{B'}}_{\mathscr{B}}(id)$ 

>[!def] Definizioni di Matrici Congruenti 
>Due matrici $A,B \in M_n(\mathbb{K})$ si dicono congruenti se $\exists H \in GL_n(\mathbb{K})$ tale che $B=H^TAH$. Per quanto visto tutte le matrici che rappresentano la stessa forma bilineare sono tra loro congruenti.

**Esempio**:
	$I_n$ è simile sono a se stessa, eppure $\forall H \in GL_n(\mathbb{K}), H^TH$ è congruente a $I_n$.
	Infatti su $\mathbb{R}^2$ sono simili a $I_2$ matrici come $\begin{pmatrix}4 & 0\\ 0 & 9\end{pmatrix}$ o $\begin{pmatrix}2 & 3\\ 3 & 5\end{pmatrix}$ 
	Ma non solo, in un campo $\mathbb{K}$ algebricamente chiuso, tutte le matrici simmetriche sono congruenti a $I_n$
	Inoltre $\begin{pmatrix}1 & 3\\ 0 & 2\end{pmatrix}$ è simile a $\begin{pmatrix}1 & 0\\ 0 & 2\end{pmatrix}$, ma d'altra parte una matrice non simmetrica non può essere congruente ad una simmetrica

**Esempio**:
	Se prendo le matrici $A = \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$ e $B = \begin{pmatrix}1 & 0\\ 0 & -2\end{pmatrix}\in M_2(\mathbb{Q})$ non possono essere congruenti su $\mathbb{Q}$ perché $\nexists H \in GL_2(\mathbb{Q})$ tale che $B = H^{T}AH$ perché $\begin{cases}det(A) = 1\\ det(B) = 2\end{cases}$ e $2$ non è un quadrato in $\mathbb{Q}$ ($\frac{det(B)}{det(A)}=2≠\alpha^2, \forall \alpha \in \mathbb{Q}$)
	Però $A,B$ sono simili su $\mathbb{R}$, infatti $\begin{pmatrix}1 & 0\\ 0 & \frac{1}{\sqrt{2}}\end{pmatrix} \begin{pmatrix}1 & 0\\ 0 & -2\end{pmatrix} \begin{pmatrix}1 & 0\\ 0 & \frac{1}{\sqrt{2}}\end{pmatrix} = \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$ e se $\mathscr{B}_B=\{u, v\}\Rightarrow \mathscr{B}_A=\{u, \frac{v}{\sqrt{2}}\}$ 

**Osservazione**: Se $A$ e $B$ sono congruenti e se una delle due è simmetrica (o alternata), allora anche l'altra lo è

**Esempio**:
	Se prendo le matrici $A = \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$ e $B = \begin{pmatrix}1 & 0\\ 0 & -2\end{pmatrix}\in M_2(\mathbb{Q})$ non possono essere congruenti su $\mathbb{Q}$ perché $\nexists H \in GL_2(\mathbb{Q})$ tale che $B = H^{T}AH$ perché $\begin{cases}det(A) = 1\\ det(B) = 2\end{cases}$ e $2$ non è un quadrato in $\mathbb{Q}$ ($\frac{det(B)}{det(A)}=2≠\alpha^2, \forall \alpha \in \mathbb{Q}$)
	Però $A,B$ sono simili su $\mathbb{R}$, infatti $\begin{pmatrix}1 & 0\\ 0 & \frac{1}{\sqrt{2}}\end{pmatrix} \begin{pmatrix}1 & 0\\ 0 & -2\end{pmatrix} \begin{pmatrix}1 & 0\\ 0 & \frac{1}{\sqrt{2}}\end{pmatrix} = \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$ e se $\mathscr{B}_B=\{u, v\}\Rightarrow \mathscr{B}_A=\{u, \frac{v}{\sqrt{2}}\}$ 

**Osservazione**: Se $\beta$ è antisimmetrica, $\forall u \in V, \beta(u,u) = 0$ 

>[!def] Formula di Polarizzazione 
>Sia $\beta$ simmetrica, allora tutti gli elementi della forma $\beta(u,v)$ sono determinati unicamente dalla formula (chiamata formula di polarizzazione): $\displaystyle{\beta(u,v) = \frac{\beta(u+v, u+v)-\beta(u,u)-\beta(v,v)}{2}}$

Infatti la formula deriva direttamente dallo sviluppo di $\beta(u+v, u+v)=\beta(u,u)+2\beta(u,v)+\beta(v,v)$ 
In particolare, se $\beta$ è simmetrica non nulla, $\exists z \in V, z≠0$ tale che $\beta(z, z)=0$. Altrimenti per la formula di polarizzazione, $\beta(u, v)=0,\forall u,v \in V$ 

>[!def] Definizione di Vettore Isotropo 
>Sia $\beta: V\times V\rightarrow \mathbb{K}$ forma bilineare su $V$. Un vettore $v \in V$ si dice isotropo se $\beta(v, v)=0$

**Esempio**:
	Forma lineare standard su $\mathbb{R}^n, \beta\left(\begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}, \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} \right)=x_1^2+...+x_n^2 = 0\Leftrightarrow \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}=0$. È chiaramente l'unico

**Esempio**:
	Sia $\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix} \in M_2(\mathbb{R})$. Cerco i vettori isotropi $\begin{pmatrix}x \\ y\end{pmatrix}\Rightarrow \begin{pmatrix}x & y\end{pmatrix} \begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix} \begin{pmatrix}x \\ y\end{pmatrix}=0\Rightarrow x^2-y^2=0\Leftrightarrow (x+y)(x-y)=0$ 
	L'insieme degli isotropi è l'insieme è l'unione delle rette $x+y = 0$ e $x-y = 0$ 
	
```tikz 
\usepackage{pgfplots} 

\pgfplotsset{compat=1.16} 
\begin{document} 

\begin{tikzpicture}
\begin{axis}
[
	axis lines=center,
    xlabel={$x$}, 
    ylabel={$y$}
]
\addplot[black, no marks, domain=-1:1, y domain = -1:1, samples=50] {x};
\addplot[no marks, domain=-1:1, samples=50] {-x};

\end{axis}
\end{tikzpicture}



\end{document} 
```
**Esempio**:
	Su $\mathbb{R}^3, M= \begin{pmatrix}1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 & -1\end{pmatrix}$ cerco i vettori isotropi $\begin{pmatrix}x\\ y\\ z\end{pmatrix}$ tali che $\beta\left( \begin{pmatrix}x\\ y\\ z\end{pmatrix}, \begin{pmatrix}x\\ y\\ z\end{pmatrix}\right) \Leftrightarrow x^2+y^2-z^2=0$
	
```tikz 
\usepackage{pgfplots} 

\pgfplotsset{compat=1.16} 
\begin{document} 

\begin{tikzpicture} \begin{axis}[ axis lines=center, axis on top, xlabel={$x$}, ylabel={$y$}, zlabel={$z$}, domain=0:1, y domain=0:2*pi, xmin=-1.5, xmax=1.5, ymin=-1.5, ymax=1.5, colormap/blackwhite, samples=10, samples y=40, z buffer=sort, ] \addplot3 [surf] ({x*cos(deg(y))},{x*sin(deg(y))},{x}); \addplot3 [surf] ({-x*cos(deg(y))},{-x*sin(deg(y))},{-x}); \end{axis} \end{tikzpicture}

\end{document} 
```

**Osservazione**: Se $\beta$ è degenere, significa che $rad(\beta)=\{z \in V \; | \; \beta(z, w) = 0, \forall w \in V\}≠\{0\}\Rightarrow$ se prendo $v \in rad(\beta)\Rightarrow \beta(v, v)=0$ e ciò significa che esistono dei vettori isotropi non nulli.

**Esempio**:
	Sia $\beta: \mathbb{K}^2 \times \mathbb{K}^2 \rightarrow \mathbb{K}$ definita rispetto ad una base $\mathscr{B}=\{v_1, v_2\}$ da $M = \begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}\Rightarrow det(M)≠0\Rightarrow \beta$ non è degenere, ma $\beta(v_1,v_1)=0$ e $\beta(v_2, v_2)=0$ 

**Esercizio** 1:
	Sia $\beta$ una forma bilineare simmetrica non degenere su uno spazio vettoriale di dimensione $2$ con un vettore isotropo non nullo. Mostrare che esiste una base di $V$ rispetto alla quale la matrice di $\beta$ sia $\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}$

**Soluzione**:
	Cerco una base $\{v, w\}$ di $V$ tale che $v$ e $w$ devono essere isotropi e che $\beta(v, w)=\beta(w, v)=1$ (dalla forma della matrice). Per ipotesi esiste un vettore isotropo non nullo $v$. Osservo che certamente esiste un vettore linearmente indipendente con $v$ tale che $\beta(v, z)≠0$, altrimenti la matrice di $\beta$ rispetto alla base $\{v, z\}$ di $V$ sarebbe $\begin{pmatrix}0 & 0\\ 0 & *\end{pmatrix}$, ma avrebbe quindi determinante uguale a $0$ contro l'ipotesi.
	- Se $z$ è isotropo e $\beta(v, z)=\alpha ≠ 0$, sceglierò $w=\frac{1}{\alpha}z\Rightarrow \begin{cases}\beta(v, v)=0\\ \beta(z, z)\Rightarrow \beta(w, w)=\frac{1}{\alpha^2}\beta(z, z)=0\\ \beta(v, w)= \frac{1}{\alpha}\beta(v,z)=1\end{cases}$ 
	- Se $z$ non è isotropo, cerco $z+tv, t \in \mathbb{K}$ tale che $\beta(z+tv, z+tv)=\beta(z, z)=2t\beta(z, v)+t^2\beta(v, v)=0\Rightarrow$ $\Rightarrow t = \frac{\beta(z, z)}{2\beta(z, v)}=\frac{\beta(z, z)}{2\alpha}$. A questo punto $z+tv$ è isotropo e linearmente indipendente da $v$ e quindi posso procedere come prima.

**Esercizio 2**:
	Su $\mathbb{R}_{≤2}[x]$ considero le seguenti forme bilineari:
	1) $\beta(p, q)=p(0)q(0)+p(1)q(1)+p(2)q(2)$
	2) $\gamma(p, q)=p(0)q(0)+p(1)q(1)$
	3) $\delta(p,q)=p(0)q(0)+p(1)q(1)-p(2)q(2)$
	Stabilire in ogni caso se esistono vettori isotropi e se le forme bilineari sono degeneri.

**Soluzione**:
	1) $p$ isotropo se $0=\beta(p,p)=p^2(0)+p^2(1)+p^2(0)\Leftrightarrow p(0)=p(1)=p(2)=0\Rightarrow p=0$ da cui si può facilmente che $\beta$ non è degenere *(se lo fosse state avremmo trovato un vettore isotropo)*
	2) $p$ isotropo se $=0\gamma(p,p)=p^2(0)+p^2(1)=0\Leftrightarrow p(0)=q(0)=0\Rightarrow p=x(x-1)$ a meno di multipli. $x(x-1)\in^?rad(\gamma)\Rightarrow\gamma(x(x-1), q)=0 \forall q\Rightarrow \gamma$  è degenere
	3) $p$ è isotropo se $0 = \delta(p, p)=p^2(0)+p^2(1)-p^2(2)\Rightarrow p=x-1\begin{cases}p(0)=-1\\ p(1)=0\\ p(2)=1\end{cases}$ quindi tutto sommato torna $0$
	$(x-1)\in^? rad(\delta)\Rightarrow \delta(x-1, q)\Rightarrow -q(0)-q(2)\xlongequal{\text{Non necessariamente}}0$. Non posso dedurre nulla sulla evenutale degenerazione della forma: devo costruire una matrice associata e calcolarne il rango:
	Fisso prima una base $\mathscr{B}=\{1, x, x^2\}$ di $\mathbb{R}_{≤2}[x]$ e scriviamo $M_\mathscr{B}(\delta)$: ($\delta$ è simmetrica)
	$\left. \begin{matrix*}[l]\delta(1,1)=1+1-1=1 & \delta(1, x)=1-2=-1 & \delta(1, x^2)=1-4=-3\\ \delta(x,1) = \delta(1, x) & \delta(x, x)=1-4=-3 & \delta(x,x^2)=1-8=-7 \\ \delta(x^2,1)=\delta(1, x^2) & \delta(x^2, x)=\delta(x,x^2) & \delta(x^2, x^2)=1-14 = -14\end{matrix*}\right\}M_\mathscr{B}(\delta)=\begin{pmatrix}1 & -1 & -3\\ -1 & -3 & -7\\ -3 & -7 & -13\end{pmatrix}$ 
	Poiché il determinante di $M$ è diverso da $0$, o equivalentemente il rango della matrice $M$ è $3$, allora $\delta$ è non degenere.

>[!def] Definizione di Forma Bilineare Quozientata 
>Sia $\beta: V\times V\rightarrow \mathbb{K}$ una forma bilineare riflessiva degenere. Si definisce Forma Bilineare Quozientata $\beta'$ da $\beta$ la forma bilineare $\beta': V/_{rad(\beta)} \times V/_{rad(\beta)}\rightarrow \mathbb{K}$. 

Verifichiamo che è ben definita:
	siano $[v']=[v]$ e $[w']=[w]\Rightarrow \beta'([v'], [w'])=\beta(v', w')$ poiché $[v']=[v]\Rightarrow [v']-[v]=z \in rad(\beta)$ e $[w']=[w]\Rightarrow [w']-[w]=t \in rad(\beta)\Rightarrow \beta(v', w')= \beta(v+z, w+t)=\beta(v,w)+\underbrace{\beta(z, w)}_{=0}+\underbrace{\beta(v, t)}_{=0}+\underbrace{\beta(z, t)}_{=0}=$$=\beta(v,w)=\beta'([v],[w])$. 
	Va verificato poi che $\beta'$ è non degenere: abbiamo che $rad(\beta')=\{[v] \in V/_{rad(\beta)}\; | \; \beta'([v],[w])=0, \forall [w] \in V/_{rad(\beta)}\}$ ma per quanto supposto prima $\beta'([v], [w])=\beta(v,w)$ si ottiene che $\{[v] \in V/_{rad(\beta)}\; | \; \beta(v, w)=0, \forall w \in V\}=\{[v]\; | \; v \in rad(\beta)\}=\{0\}$ 
	Equivalentemente se $V=W\oplus rad(\beta)\Rightarrow \beta|_{W\times W}$ è non degenere.

*Piccola notazione*: Spesso al posto di $\beta|_{W\times W}$ si trova scritto $\beta|_W$.

>[!def] Definizione di Sottospazio Ortogonale
>Sia $\beta:V \times V\rightarrow \mathbb{K}$ una forma bilineare riflessiva e sia $W\subseteq V$. Si chiama "Ortogonale di $W$" e si indica con $W^\bot$ il sottoinsieme $W^\bot=\{v \in V\; | \; \beta(v, w)=0, \forall w \in W\}$ e i vettori di $v$  e $w$ si dicono vettori ortogonali.

**Esempio**:
	Con $V = \mathbb{R}^3$ con forma bilineare standard. Preso $W=\left\{\left.\begin{pmatrix}x\\ y\\ z \end{pmatrix}\; \right| \; x-y+2z = 0\right\}$, chi è $W^\bot$?
	Mi basta prendere $W^\bot=Span\left\{ \begin{pmatrix}1\\-1\\2\end{pmatrix}\right\}\Rightarrow \begin{pmatrix}x & y & z\end{pmatrix}I_3\begin{pmatrix}1\\ -1\\ 2\end{pmatrix}\Leftrightarrow \beta\left( \begin{pmatrix}x\\ y\\ z\end{pmatrix},\begin{pmatrix}1\\ -1\\ 2\end{pmatrix} \right)=0$  

**Esempio**:
	$V^\bot=rad(V)$ dalla definizione di radicale

*Osservazione*: Se $\{w_1,...,w_k\}$ è una base di $W\Rightarrow v\in W^\bot \Leftrightarrow \underbrace{\beta(v,w_1)= ...= \beta(v, w_k)}_{k \text{ equazioni lineari}}=0$ 

**Esempio**:
	$V=\mathbb{K}^n$ e $A$ matrice simmetrica o antisimmetrica, sia $\beta_A$ la forma bilineare associata $\Leftrightarrow \beta_A(x, y)=x^TAy$ e sia $W=\{y_1,..., y_k\}$, allora $W^\bot$ è l'insieme delle soluzioni del sistema lineare $\begin{cases}x^TAy_1=0\\ \vdots \\ x^TAy_k=0\end{cases}$ con $k$ equazioni lineari omogenee

**Esempio**:
	$V=\mathbb{K}^4$ e $A=\begin{pmatrix}0 & 1 & 0 & 0\\ 1 & 0 & 0 & 0\\ 0 & 0 & 1 & 2\\ 0 & 0 & 2 & 1\end{pmatrix}$ e sia $W=Span\left\{\begin{pmatrix}1\\ 0\\1\\1\end{pmatrix} , \begin{pmatrix}1\\1\\1\\1\end{pmatrix}\right\}$. 
	Calcoliamo $W^T:$ $x^T\begin{pmatrix}0 & 1 & 0 & 0\\ 1 & 0 & 0 & 0\\ 0 & 0 & 1 & 2\\ 0 & 0 & 2 & 1\end{pmatrix}\begin{pmatrix}1\\ 0\\1\\1\end{pmatrix}=0;x^T\begin{pmatrix}0 & 1 & 0 & 0\\ 1 & 0 & 0 & 0\\ 0 & 0 & 1 & 2\\ 0 & 0 & 2 & 1\end{pmatrix}\begin{pmatrix}1\\ 1\\1\\1\end{pmatrix}\Rightarrow x_1=\begin{pmatrix}0\\1\\1\\2\end{pmatrix}; x_2=\begin{pmatrix}1\\1\\3\\3\end{pmatrix}\Rightarrow \begin{cases}x_2+x_3+2x_4 = 0\\ x_1+x_2+3x_3+3x_4=0\end{cases}\Rightarrow$$\Rightarrow dim(W^\bot)=2\Rightarrow W^\bot=\left\{ \begin{pmatrix}-2\\-1\\1\\0\end{pmatrix} , \begin{pmatrix}-2\\-1\\0\\1\end{pmatrix}\right\}$ 

In questo caso $dim(W)+dim(W^\bot)=dim(V)$. Sarà sempre vero?
No, se $A=0$ allora ogni sottospazio di $V$ è ortogonale ad un altro. In generale ha dimensione $dim(V)-rg(Ay_1,...,Ay_k)≥ dim(V)-dim(W)$. In particolare $dim(W^\bot)=dim(V)-dim(W)\Leftrightarrow (Ay_1,...,Ay_k)$ ha rango $k$ ossia se e solo se $AY_1,...,AY_k$ sono linearmente indipendenti.
Se $A$ è invertibile ($\beta_A$ non degenere) questo avviene sicuramente (poiché $y_1,...,y_k$ sono L.I.), almeno in questo caso ($V = \mathbb{K}^n$ e $\beta = \beta_A$) abbiamo che se $\beta$ è non degenere $\Rightarrow dim(W)+dim(W^\bot)=dim(V)$

**Attenzione**: Anche se l'uguaglianza è vera, non è detto che $V = W \oplus W^\bot$ 

**Esempio**:
	$A=\begin{pmatrix}0 & 1 & 0 & 0\\ 1 & 0 & 0 & 0\\ 0 & 0 & 0 & 1\\ 0 & 0 & 1 & 0\end{pmatrix}$ e $W=Span\{e_1,e_3\}$ e $W'=Span\{e_1,e_2\}$
	Calcoliamo $W^\bot$: devo calcolare $Ae_1$ e $Ae_3$ e poi scrivo il sistema lineare $Ae_1=e_2$ e $Ae_3=3_4$. Si ottiene quindi che $W^\bot=$ Insieme delle soluzioni di $\begin{cases}x_2=0\\ x_4=0\end{cases}\Rightarrow\{e_1, e_3\}\Leftrightarrow W^\bot=Span\{e_1,e_3\}$. In questo, nonostante la forma sia non degenere e $dim(W)+dim(W^\bot)=dim(V)\Rightarrow V≠W\oplus W^\bot$, anzi $W=W^\bot$
	Calcoliamo $W'^\bot$: $Ae_1=e_2$ e $Ae_2=e_1\Rightarrow W^\bot=$ Soluzioni di $\begin{cases}x_1=0\\ x_2=0\end{cases}\Rightarrow W'^\bot=\{e_3, 3_4\}$. Quindi $V=W'\oplus W'\bot$ 

>[!def] Definizione di Sottospazio Isotropo
>Un sottospazio $W$ tale che $W = W^\bot$ è detto Sottospazio Isotropo

**Osservazione**: Nell'esempio precedente chi è $\beta|_W$? $\beta|_W=0$ (lo si poteva vedere anche dal fatto che $W = W^\bot$)
Infatti calcolando la matrice di $\beta$ rispetto alla base $e_1, e_3\Rightarrow \begin{pmatrix}\beta(e_1,e_1) & \beta(e_1,e_3)\\ \beta(e_1,e_3) & \beta(e_3,e_3)\end{pmatrix}\Leftrightarrow \begin{pmatrix} {\color{blue}0} & 1 & {\color{blue} 0} & 0\\ 1 & 0 & 0 & 0\\ {\color{blue} 0} & 0 & {\color{blue} 0} & 1\\ 0 & 0 & 1 & 0\end{pmatrix}$.
In modo analogo si può vedere che $\beta|_{W'}=\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}=\begin{pmatrix}{\color{blue}0} & {\color{blue}1} & 0 & 0\\ {\color{blue}1} & {\color{blue}0} & 0 & 0\\ 0 & 0 & 0 & 1\\ 0 & 0 & 1 & 0\end{pmatrix}$ 

**Proposizione**: Siano $\beta$ forma riflessiva e $W \subseteq V\Rightarrow W\cap W^\bot=rad(\beta|_W)$ 
***Dimostrazione***:
	$rad(\beta|_W)=\{u \in W\; | \; \beta(u,w)=0, \forall w \in W\}$, ma $\beta(u,w)=0, \forall w \in W\Rightarrow u \in W^\bot$ ma poiché $u \in W\Leftrightarrow u\in W\cap W^\bot$ 

Cerchiamo di capire in generale quanto è $dim(W^\bot)$. Ricordiamo che $\beta$ definisce $B_\beta:V\rightarrow V^*$ mediante $B_\beta(u)(w)=\beta(u,w)$. Come si esprime $W^\bot$ in termini di $B_\beta$?
Fissiamo $v \in V$. Quando si ha che $v \in W^\bot$? Lo si ha quando $\beta(v, w)=0, \forall w \in W\Rightarrow B_\beta(w)(v)=0 ,\forall w \in W=$$=B_\beta(v)(w)=0 ,\forall w \in W$. Guardiamo quest'ultimo pezzo di quest'uguaglianza. Poiché $B_\beta(v)\in V^*$ e $v \in W\Rightarrow B_\beta(v) \in Ann(W)$. Quindi per rispondere si ha che $v \in W^\bot \Leftrightarrow B_\beta(v)\in Ann(W)\Rightarrow W^\bot=B^{-1}_\beta(Ann(W))$ _con $B^{-1}_\beta$ interpretato come la Controimmagine della funzione, non l'inversa
Ricordiamo inoltre che $dim(Ann(W))=dim(V)-dim(W)$_. In particolare

**Proposizione**: Se $\beta$ è non degenere $\Rightarrow dim(W^\bot)=dim(V)-dim(W)$
***Dimostrazione***: 
	$\beta$ è non degenere $\Leftrightarrow B_\beta$ è un isomorfismo e in questo caso $dim(B_\beta^{-1}(Ann(W)))=$$=dim(Ann(W))=dim(V)-dim(W)$ 

**Proposizione**: Se $\beta$ è non degenere e $W \subseteq V$ è un sottospazio vettoriale tale che $\beta|_W$ è non degenere $\Rightarrow V = W\oplus W^\bot$ e $\beta|_{W^\bot}$ è non degenere. (In questo caso $(W^\bot)^\bot=W$, cosa che in generale non è sempre vera).
***Dimostrazione***:
	Per la proposizione precedente $dim(W^\bot)=dim(V)-dim(W)\Rightarrow V = W \oplus W^\bot \Leftrightarrow W\cap W^\bot=\{0\}$, ma, come abbiamo già visto $W \cap W^\bot=rad(\beta)|_W=\{0\}\Leftrightarrow \beta|_W$ è non degenere. Resta da mostrare quest'ultima cosa.
	Supponiamo $u \in W^\bot$ tale che $u \in (\beta|_{W^\bot})$, cioè $\beta(u,u')=0, \forall u' \in W^\bot$. Se prendo $v \in V=W\oplus W^\bot$ ottengo che $v = \underbrace{w}_{\in W}+ \underbrace{u'}_{\in W^\bot}$ e $\beta(u,v)=\beta(w+u',u)=\underbrace{\beta(w,u)}_{=0\Leftarrow W\oplus W'}+\underbrace{\beta(u',u)}_{=0\text{ Per prima}}=0$ 

**Esempio**:
	Sia $V$ un $\mathbb{K}-\text{spazio vettoriale}$ e $\beta$ simmetrica non degenere e supponiamo $\exists v≠0$ isotropo. Poiché $\beta$ è non degenere $\exists u'$ tale che $\beta(v,u')≠0$. Ponendo $u = \frac{u'}{\beta(v,u')}$ abbiamo che $\beta(v,u)=1$. Modifichiamo $u$ per renderlo isotropo. Prendiamo $v_2=u+vt$ e cerchiamo $t \in \mathbb{K}$ che renda $v_2$ un vettore isotropo e osserviamo che $\beta(v_1,v_2)=1$. Infatti $\beta(v_2,v_2)=\beta(u,u)+2t\underbrace{\beta(u,v_1)}_{=1}$, mi basta quindi prendere $t=\frac{\beta(u,u)}{2}$. 
	Se considero $W= Span\{v_1,v_2\}\Rightarrow$ la matrice di $\beta_W$ rispetto a $\{v_1,v_2\}$ è $\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}\Rightarrow \beta|_W$ è non degenere, quindi per la proposizione precedente si ha che $V= W \oplus W^\bot$.
	Posso considerare ora $\beta|_{W^\bot}$, che è non degenere per la proposizione, così induttivamente vedo he posso scomporre $V$ in $W_{1}\;^{\bot}_{\oplus} W_2\;^{\bot}_{\oplus}...\;^{\bot}_{\oplus}W_k\;^{\bot}_{\oplus}W_{an}$ tutti in somma diretta e ortogonali fra loro, ognuno con $dim(W_i)=w, \forall i \in \{1,...,k\}$ e $\beta|_{W_i}=\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}$ rispetto ad un'opportuna base e $\beta|_{W_{an}}$ è non degenere e non ha vettori isotropi ($an$ sta per anisotropo.)
	Quindi scelta una base opportuna, la matrice di $\beta$ sarà: $$\begin{pmatrix}\begin{matrix}0 & 1\\ 1 & 0\end{matrix}\\ & \begin{matrix}0 & 1\\ 1 & 0\end{matrix}\\ && \ddots \\ &&&\begin{matrix}0 & 1\\ 1 & 0\end{matrix}\\ &&&& \boldsymbol{A}\end{pmatrix}$$Tutto ciò con qualsiasi campo $\mathbb{K}$ a caratteristica diversa da $2$

**Esempio**:
	$A = \begin{pmatrix}-1& 0\\ 0 & 2\end{pmatrix}$ su $\mathbb{R}$ o su $\mathbb{C}$ ci sono dei vettori isotropi non nulli $\Rightarrow A$ è coniugata a $\begin{pmatrix}0 & 1\\ 1 & 0\end{pmatrix}$ ma in $\mathbb{Q}$ non ci sono
	(dipende infatti dalla scelta del campo solamente il blocco di matrici iperboliche ("antidiagonali"))
	$I=\begin{pmatrix}1 & 0\\ 0 & 1\end{pmatrix}$ su $\mathbb{R}$ non ci sono vettori isotropi, ma su $\mathbb{C}$ si e tra questi c'è $\begin{pmatrix}1\\ i\end{pmatrix}$ 

>[!th] Teorema 
>Sia $\beta:V \times V \rightarrow \mathbb{K}$ una forma bilineare riglessiva e sia $W \subseteq V\Rightarrow$$dim(W^\bot)=dim(V)-dim(W)+dim(W\cap rad(\beta))$ 

***Dimostrazione***:
	Considero l'applicazione $B_\beta:V \rightarrow V^*, B_\beta(v)(w)=\beta(w,v)$ e la restringo a $W\Rightarrow B_\beta|_W:W \rightarrow V^*$.
	Per il Teorema del Rango abbiamo $dim(W)=dim(Ker(B_\beta|_W))+dim(Im(B_\beta|_W))$
	Chi è $Ker(B_\beta|_W)$? $B_\beta|_W=\{w \in W \; | \; B_\beta(w)=0\}$ ma $B_\beta(w)=0\Leftrightarrow B_\beta(w)(v)=0, \forall v \in V\Rightarrow \beta(v,w)=0, \forall v \in V$ ma questo è esattamente $rad(\beta)\cap W$
	Chi è $Im(B_\beta|_W)$? Poiché $Im(B_\beta|_W) \subseteq V^*$ e $dim(Im(B_\beta|_W))=dim(V^*)-dim(Z(Im(B_\beta|_W)))$, quindi $dim(Im(B_\beta|_W))=dim(V)-dim(Z(Im(B_\beta|_W)))$, ma quest'ultimo è $Z(Im(B_\beta|_W))=\{v \in V \; | \; B_\beta(w)(v)=0, \forall w \in W\}=\{v \in V \; | \; \beta(v, w)=0, \forall w \in W\}= W^\bot$  

*Richiamo*: Se $H \subseteq V^*\Rightarrow dim(H)=dim(V^*)-dim(Z(H))$ dove $Z(H)=\{v \in V\; | \; \varphi(v)=0, \forall \varphi \in H\}$ 
***Dimostrazione***: 
	Fisso una base di $H=\{\varphi_1,...,\varphi_r\}\Rightarrow Z(H)=\{v \in V\; | \; \varphi_i(v)=0, \forall i \in \{1,...,r\}\}\Rightarrow \Phi:V \rightarrow \mathbb{K}^n$ tale che $$\Phi(v)=\begin{pmatrix}\varphi_1(v)\\ \vdots\\ \varphi_r(v)\end{pmatrix}$$ossia $Z(H)=Ker(\Phi)$ e dal Teorema del Rango $dim(Z(H))=dim(V)-dim(Im(\Phi))$, ma poiché $\varphi_1,...,\varphi_r$ sono linearmente indipendenti perché vettori di una base $\Rightarrow \Phi$ è suriettiva $\Rightarrow dim(H)=dim(Im(\Phi))$ 

>[!def] Definizione di Base Ortogonale 
>SIa $\beta: V \times V\rightarrow \mathbb{K}$ una forma bilineare su $V$, si chiama base ortogonale di $V$ una base $\mathscr{B}=\{v_1,...,v_n\}$ di $V$ tale che $\beta(v_i, v_j)=0, \forall i≠j$. Se $\mathscr{B}$ è ortogonale allora la matrice sarà$$M_\mathscr{B}(\beta)=\begin{pmatrix}\beta(v_1,v_1) &&& \boldsymbol{0}\\ & \beta(v_2,v_2)\\ && \ddots\\ \boldsymbol{0} &&& \beta(v_n, v_n)\end{pmatrix}$$ ed è una matrice diagonale

>[!th] Teorema
Sia $\beta$ una forma bilineare simmetrica non degenere su uno spazio vettoriale $V$. Allora esiste una base ortogonale rispetto a $\beta$.

***Dimostrazione***: 
	Procediamo per induzione nella dimensione di $V$.
	Se $dim(V)=1$ allora non c'è nulla da dimostrare (banalmente diagonale).
	Assumiamo l'ipotesi induttiva $\Rightarrow$ esiste certamente $v \in V, v≠0$ non isotropo, altrimenti per la formula di polarizzazione, $\beta$ sarebbe nulla, ma per ipotesi è non degenere, quindi non nulla $\Rightarrow \beta(v, v)\neq0\Leftrightarrow \beta|_{Span\{v\}}$ è non degenere $\Rightarrow V=Span\{v\}\oplus (Span\{v\})^\bot$  
	Posso applicare l'ipotesi induttiva a $(Span\{v\})^\bot$ resta naturalmente simmetrica, inoltre è non degenere.
	Con le matrici $M_\mathscr{B}(\beta)=\begin{pmatrix}\beta(v, v) & \boldsymbol{0}\\ \boldsymbol{0} & *\end{pmatrix}$. Se esistesse $z \in (Span\{v\})^\bot$ tale che $\beta(z, w)=0, \forall w \in V$, ma poiché è ortogonale a $Span\{v\}\Rightarrow z \in rad(\beta)$, ma $\beta$ è non degenere, quindi non può esistere.
	Quindi l'ipotesi induttiva garantisce l'esistenze di una base di $(Span(\{v\})^\bot=\{v_2,...,v_n\}$ ortogonale, quindi $\{v_1,v_2,...,v_n\}$ è base ortogonale di $V$

**Corollario**: Sia $\beta$ una forma bilineare simmetrica. Allora esiste una base di $V$ ortogonale rispetto a $\beta$
***Dimostrazione***:
	CI si riduce al caso $\beta$ degenere spezzando spezzando $V=rad(\beta)\oplus V'$ cosicché $\beta|_{V'}$ diventa non degenere. Se $\{v_1,...,v_k\}$ è base di $rad(\beta)$ e $\{v_{k+1},...,v_n\}$ è base ortogonale di $V'$ quindi $\mathscr{B}_V=\{v_1,...,v_k,v_{k+1},...,v_n\}$ è una base ortogonale di $V$ e la matrice diagonale sarà della forma: $$M_{\mathscr{B}_V}(\beta)=\begin{pmatrix}\begin{matrix}0 && \boldsymbol{0}\\ & \ddots\\ \boldsymbol{0} && 0\end{matrix} & \boldsymbol{0}\\ \boldsymbol{0} & \begin{matrix}\beta(v_{k+1},v_{k+1}) && \boldsymbol{0}\\ & \ddots\\ \boldsymbol{0} && \beta(v_n, v_n)\end{matrix}\end{pmatrix}$$In termini di matrici abbiamo dimostrato che ogni matrice simmetrica è congruente ad una matrice diagonale.

**Esempio**:
	- $\begin{pmatrix}0\\ &0\\ &&2\end{pmatrix}$ e $\begin{pmatrix}0\\ &2\\ &&3\end{pmatrix}$ non possono essere congruenti per $dim(rad(\beta))$
	- $A = \begin{pmatrix}0\\ &2\\ &&3\end{pmatrix}$ e $B =\begin{pmatrix}0\\ &1\\ &&-1\end{pmatrix}$ sono congruenti su $\mathbb{C}$ perché se $\mathscr{B}_A=\{v_1,v_2,v_3\}\Rightarrow \mathscr{B}_B=\{v_1, \frac{v_2}{\sqrt{2}}, \frac{v_3}{\sqrt{3}i}\}$ 

>[!th] Teorema
Sia $A \in M_n(\mathbb{K})$ una matrice simmetrica a coefficienti in un campo algebricamente chiuso. Allora $A$ è congruente alla matrice $\begin{pmatrix}I_k & 0\\ 0 & 0\end{pmatrix}$ con $k = rg(\beta)$. In particolare 2 matrici simmetriche a coefficienti in un campo algebricamente chiuso sono congruenti se e solo se hanno lo stesso rango.

***Dimostrazione***:
	Abbiamo dimostrato che $A$ è congruente ad una matrice diagonale $$D=\begin{pmatrix}d_1\\ &\ddots\\ && d_k\\ &&&0\\ &&&& \ddots\\ &&&&&0\end{pmatrix}$$Se interpretiamo $A$ come la matrice di una forma bilineare simmetrica $\beta$, questo significa che $dim(rad(\beta))=n-k$ e che esiste una base ortogonale rispetto a $\beta\; \{v_1,...,v_k\}$. La matrice di $\beta$ rispetto alla base $\{\frac{v_1}{\sqrt{\beta(v_1,v_1)}}, \frac{v_2}{\sqrt{\beta(v_2,v_2)}},...,\frac{v_k} {\sqrt{\beta(v_k,v_k)}}, v_{k+1}, ...,v_n\}$  e $\begin{pmatrix}I_k & 0\\ 0 & 0\end{pmatrix}$ 

**Osservazione**: Su $\mathbb{K}$ ci si può ridurre al massimo a $\begin{pmatrix}I_k\\ & -I_k\\ && 0\end{pmatrix}$ in quanto non esistono in $\mathbb{R}$ radici di numeri negativi, e di conseguenza ci si limita a porre $-\sqrt{\lambda}$ 

**Esercizio 1**:
	Sia $A = \begin{pmatrix}1 & 0 & 0 & 0\\ 0 & 1 & 2 & -1\\ 0 & 2 & 0 & 0\\ 0 & -1 & 0 & 1\end{pmatrix}$ e sia $\beta$ la forma bilineare su $\mathbb{R}^4$ associata ad $A$ rispetto alla base canonica. Determinare una base ortogonale rispetto a $\beta$.

**Soluzione**:
	Primo passo: cerco un vettore non isotropo, ad esempio $e_1$, visto che $a_{1,1}=\beta(e_1,e_1)=1≠0$ 
	Secondo passo: determino $(Span\{e_1\})^\bot=Span\{e_2,e_3,e_4\}$
	Terzo passo: ripeto.
	Cerco un vettore non isotropo in $Span\{e_2,e_3,e_4\}$. Posso prendere $e_2$ dal momento che $\beta(e_2,e_2)=1$ 
	Dentro $Span\{e_2,e_3,e_4\}$ devo considerare $(Span\{e_2\})^\bot=\left\{ \left. \begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix} \in \mathbb{R}^4 \; \right| \; x=0, \; \beta\left( \begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix}, e_2\right)=0\right\}\Rightarrow$$\Rightarrow \beta\left( \begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix}, e_2\right)=\begin{pmatrix}x & y & z & t\end{pmatrix}Ae_2 = \begin{pmatrix}x & y & z & t\end{pmatrix}\begin{pmatrix}0 \\ 1\\2\\-1\end{pmatrix} = y+2z-t=0\Rightarrow$$\Rightarrow (Span\{e_1,e_2\})^\bot=\left\{\left. \begin{pmatrix}x\\ y\\ z\\ t\end{pmatrix} \in \mathbb{R}^4 \; \right| \; \begin{cases}x = 0\\ t = y+2z\end{cases}\right\}=\left\{ \begin{pmatrix}0\\ y\\ z\\ y+2z\end{pmatrix} \in \mathbb{R}^4 \right\}$ 
	E ripeto ancora:
	Cerco ancora un altro vettore non isotropo.
	$\begin{pmatrix}0\\1\\0\\1\end{pmatrix}$ è isotropo? $\beta\left(\begin{pmatrix}0\\1\\0\\1\end{pmatrix}, \begin{pmatrix}0\\1\\0\\1\end{pmatrix}\right)\xlongequal{?}0\Rightarrow \begin{pmatrix}0 & 1 & 0 & 1\end{pmatrix}A\begin{pmatrix}0\\1\\0\\1\end{pmatrix}= \begin{pmatrix}0 & 1 & 0 & 1\end{pmatrix}\begin{pmatrix}0\\0\\2\\0\end{pmatrix}=0$  quindi è isotropo
	$\begin{pmatrix}0 \\ 0 \\ 1 \\ 2\end{pmatrix}$ è isotropo? $\beta\left(\begin{pmatrix}0\\0\\1\\2\end{pmatrix}, \begin{pmatrix}0\\0\\1\\2\end{pmatrix}\right)=4$ quindi non è isotropo.
	Ultimo passo:
	Dentro $\left\{\begin{pmatrix}x\\ y\\ z\\ y+2z\end{pmatrix} \in \mathbb{R}^4\right\}$ cerco un vettore ortogonale a $\begin{pmatrix}0\\ 0\\ 1\\2\end{pmatrix}$, ossia $\beta\left( \begin{pmatrix}x\\ y\\ z\\ y+2z\end{pmatrix}, \begin{pmatrix}0\\0\\1\\2\end{pmatrix}\right)=0\Rightarrow$$\Rightarrow \begin{pmatrix}x & y & z & y+2z\end{pmatrix}A\begin{pmatrix}0\\ 0\\1\\2\end{pmatrix}=0\Rightarrow \begin{pmatrix}x & y & z & y+2z\end{pmatrix}\begin{pmatrix}0\\0\\0\\2\end{pmatrix}=2(y+2z)\Rightarrow y=-2z$  
	Scelgo ad esempio $\begin{pmatrix}0\\-2\\1\\0\end{pmatrix}\Rightarrow \mathscr{B}_V=\{e_1,e_2,e_3+2e_4, -2e_2+e_3\}$ è ortogonale 
	La matrice risulta quindi essere $M_\mathscr{B}(\beta)=\begin{pmatrix}1\\ &1\\ &&4\\ &&&\beta(e_3-2_2, e_3-2e_2)\end{pmatrix}=\begin{pmatrix}1\\ &1\\ &&4\\ &&&-4\end{pmatrix}$ 

**Esercizio 2**:
	Sia $f \in End(\mathbb{K}^3)$ rispetto alla base canonica alla matrice $A$. Sia $\beta$ la forma bilineare $\beta(u,v)=\langle f(u), f(v)\rangle$ (dove $\langle\;,\; \rangle$ è la forma bilineare standard):
	1) Mostrare che $\beta$ è bilineare e simmetrica
	2) Fornire condizioni necessarie e sufficienti affinché $\beta$ sia non degenere
	3) Determinare una base ortogonale per $\beta$ nel caso in cui $A = \begin{pmatrix}1 & 0 & 1\\ 0 & 1 & 0\\ 1 & 0 & 1\end{pmatrix}$

**Soluzione**:
	1) Segue dalla linearità di $f$ e dalla bilinearità del prodotto scalare standard. Infatti $\beta(\lambda u_1+u_2, v), \forall \lambda \in \mathbb{K}, \forall u_1, u_2, v \in \mathbb{K}^3\Rightarrow \left\langle f(\lambda u_1+u_2), f(v) \right \rangle = \langle \lambda f(u_1) + f(u_2), f(v)\rangle=$$= \lambda\langle f(u_1), f(v) \rangle + \langle f(u_2), f(v)\rangle= \lambda \beta(u_1, v) + \beta(u_2,v)$ 
		Questo mostra la linearità di $\beta$ rispetto al primo fattore, ma poiché la forma bilineare è il prodotto scalare standard, (ossia la matrice associata alla forma bilineare è $I_3$) si ha che $\beta(u,v)=\langle f(u), f(v)\rangle \xlongequal{\text{simm}} \langle f(v), f(u) \rangle = \beta(v,u)$ 
	2) Scriviamo i vettori in coordinate rispetto alla base canonica $\beta$ per determinare la matrice associata a $\mathscr{B}$: $\begin{cases}u = \underline{x}\\ v = \underline{y}\end{cases}\Rightarrow \begin{cases}f(u) = A\underline{x}\\ f(v) = A\underline{y}\end{cases}\Rightarrow \beta(\underline{x}, \underline{y}) = (A\underline{x})^T I_3 A\underline{y}=\underline{x}^TA^TA\underline{y}\Rightarrow \beta$ non degenere $\Leftrightarrow det(A^TA)≠0$ ma allora si ha che $det(A^TA)≠0\Rightarrow det(A^T)det(A)≠0\Rightarrow det(A)^2≠0\Rightarrow f$ invertibile. Quindi $\beta$ non degenere $\Leftrightarrow f$ invertibile.
	3) Osserviamo che $\beta$ è degenere poiché $det(A)=0$. In particolare $\begin{pmatrix}1\\ 0\\ -1\end{pmatrix} \in Ker(f)\Rightarrow \beta\left(u, \begin{pmatrix}1\\0\\-1\end{pmatrix}\right)=0, \forall u\Rightarrow \begin{pmatrix}1\\0\\-1\end{pmatrix}$ è isotropo.
		Cerco un vettore non isotropo. Per esempio $e_2\Rightarrow \beta(e_2, e_2)=\langle f(e_2), f(e_2) \rangle$ ma poiché $f(e_2)=e_2$ si ha che $\langle e_2, e_2\rangle=1$. Ora calcoliamo $(Span\{e_2\})^\bot=\left\{ \left. \begin{pmatrix}x\\ y\\ z\end{pmatrix} \in \mathbb{K}^3\; \right| \; \beta\left(\begin{pmatrix}x\\ y\\ z\end{pmatrix}, e_2 \right) =0 \right\}\Rightarrow \left\langle f\begin{pmatrix}x\\ y\\ z\end{pmatrix}, f(e_2) \right\rangle=0 \Rightarrow \begin{pmatrix}x+z & y & x+z\end{pmatrix}e_2 =0\Rightarrow y=0$   
		Quindi si ottiene che $(Span\{e_2\}^\bot=\left\{ \begin{pmatrix}x\\0\\ z\end{pmatrix} \in \mathbb{K}^3 \right\}$. Ora cerco un vettore non isotropo e ho fatto.
		Per esempio $e_1$ infatti $\beta(e_1, e_1)=\langle f(e_1), f(e_1)\rangle = \left\langle \begin{pmatrix}1\\0\\1\end{pmatrix}, \begin{pmatrix}1\\0\\1\end{pmatrix} \right\rangle=2$.
		Quindi una base ortogonale è $\mathscr{B}$ per $\beta$ è $\{e_2, e_1, e_1-e_3\}$ e di conseguenza $M_\mathscr{B}(\beta)=\begin{pmatrix}1 & 0 & 0\\ 0 & 2 & 0\\ 0 & 0 & 0\end{pmatrix}$ 

**Osservazione**: È sempre conveniente cercare prima la dimensione del radicale di $\beta$ in modo da sapere già quanti vettori non isotropi bisogna cercare. Infatti se la dimensione di $rad(\beta)=k\Rightarrow$ bisogna cercare $n-k$ vettori

*Precisazione*: $\beta(u,v)=\langle f(u), f(v) \rangle$. Se $u \in Ker(f)$ cioè $f(v)=0\Rightarrow \beta(u,v)=0, \forall v \in V\Rightarrow Ker(f)\subseteq rad(\beta)$. Vogliamo mostrare che $rad(\beta) \subseteq Ker(f)$.
	Poiché $rad(\beta)=\{u \in \mathbb{K}^3\; | \beta(u,v)=0, \forall v \in \mathbb{K}^3 \Leftrightarrow \langle f(u),f(v) \rangle =0 \forall v \in \mathbb{K}^3\}$, se $f$ è invertibile, allora $\langle f(u), f(v) \rangle=0\Rightarrow \langle f(u), z\rangle=0 \forall z \in \mathbb{K}^3$ Cerco quindi i vettori $f(u)$ che stanno nel radicale di questa forma, ma poiché $\langle \; , \; \rangle$ non è degenere, $f(u)=0\Rightarrow u \in Ker(f)$ 

**Esercizio**:
	Dimostrare che le seguenti matrici sono congruenti in $M_{2n}(\mathbb{C})$$$\begin{pmatrix}0 & I_n\\ I_n & 0\end{pmatrix}, \; \begin{pmatrix}I_n & 0\\ 0 & -I_n\end{pmatrix}, \; \begin{pmatrix}^{0\;1}_{1 \; 0} && 0\\& \ddots\\ 0 && ^{0\;1}_{1 \; 0}\end{pmatrix} = A_{pi}$$

**Soluzione**:
	Prendiamo $\begin{pmatrix}0 & I_n\\ I_n & 0\end{pmatrix}$ come la matrice di una forma bilineare $\beta: V \times V \rightarrow \mathbb{C}$ con $dim(V)=2n$ rispetto alla base $\mathscr{B}=\{v_1,...,v_n,v_{n+1},...,v_{2n}\}$. Visto che abbiamo $\beta(v_i, v_{i+n})=\beta(v_j, v_{n-j})=1$ con $\forall i \in \{1,...,n\}$ e $\forall j \in \{n+1,...,2n\}$, possiamo prendere una base $\mathscr{B}'=\{\frac{v_1+v_{n+1}}{\sqrt{2}},...,\frac{v_n+v_{2n}}{\sqrt{2}}, \frac{v_1-v_{n+1}}{\sqrt{2}},...,\frac{v_{n}-v_{2n}}{\sqrt{2}}\}$.
	Verifichiamolo: $\beta(\frac{v_i+v_{n+i}}{\sqrt{2}}, \frac{v_i+v_{n+i}}{\sqrt{2}})=1; \; \beta(\frac{v_i-v_{n+i}}{\sqrt{2}},\frac{v_i+v_{n-i}}{\sqrt{2}})=-1$. Quindi la diagonale è giusta.
	Controlliamo gli altri elementi: basta osservare che in generale $i≠k \Rightarrow \beta(v_i,v_j)=0$, quindi funziona.
	Dimostriamo adesso che la terza matrice è congruente a $\begin{pmatrix}I_n & 0\\ 0 & -I_n\end{pmatrix}$.
	Procediamo come prima: Sia $\mathscr{B}=\{v_1,...,v_n,v_{n+1},...,v_{2n}\}$ la base di $A_{pi}$, se prendiamo $\mathscr{B}'=\{\frac{v_1+v_2}{\sqrt{2}},\frac{v_1-v_2}{\sqrt{2}},...,\frac{v_i+v_{i+1}}{\sqrt{2}}\}$ con $i$ dispari abbiamo che $\beta(v_{2k+1},v_{2k+2})=1, \forall k \in \{0,...,n-1\}$, ma visto che vogliamo separare gli $1$ dai $-1$ abbiamo che $\mathscr{B}'=\{\frac{v_1+v_2}{\sqrt{2}},...,\frac{v_{2k+1}+v_{2k+2}}{\sqrt{2}},\frac{v_1-v_2}{\sqrt{2}},...,\frac{v_{2k+1}-v_{2k+2}}{\sqrt{2}}\}$ 

**Osservazione**: Se $\mathscr{B}=\{v_1,...,v_{n}\}$ è una matrice ortogonale per $\beta$ allora anche $\mathscr{B}'=\{\alpha_1v_1,...,\alpha_nv_n\}, \alpha_1,...,\alpha_n \in \mathbb{K}$  non nulli, è una base ortogonale. Infatti $$M_{\mathscr{B}}(\beta)=\begin{pmatrix}\beta(v_1,v_1)\\ & \ddots \\ && \beta(v_n, v_b)\end{pmatrix}\Leftrightarrow M_\mathscr{B'}(\beta)=\begin{pmatrix}\alpha_1^2\beta(v_1,v_1)\\ & \ddots \\ && \alpha_n^2\beta(v_n, v_b)\end{pmatrix}$$Quindi se in $\mathbb{K}$ ogni elemento è un quadrato, allora $\exists \mathscr{C}$ base di $V$ rispetto alla quale $M_\mathscr{C}(\beta)=\begin{pmatrix}I_k & 0\\ 0 & 0\end{pmatrix}$ con $k=rg(\beta)$ da cui si deduce che $A,B \in M_n(\mathbb{C})$ sono congruenti $\Leftrightarrow rg(A)=rg(B)$.
Su $\mathbb{R}$ ogni numero non nullo è un quadrato oppure è l'opposto di un quadrato, quindi ogni matrice in $M_n(\mathbb{R})$ simmetrica reale è congruente ad una matrice della forma $$\begin{pmatrix}I_k & 0 & 0\\ 0 & -I_h & 0\\ 0 & 0 & 0\end{pmatrix}$$con $n-(h+k)= dim(rad(\beta))$ con $\beta$ associata alla matrice.

>[!th] Teorema di Sylvester
Sia $\beta: V \times V \rightarrow \mathbb{R}$ una forma bilineare simmetrica. Siano $\mathscr{B}=\{v_1,...,v_k,v_{k+1},...,v_{k+h},v_{k+h+1},...,v_n\}$ e $\mathscr{B}'=\{w_1,...,w_{k'},w_{k'+1},...,w_{k'+h'},w_{k'+h'+1},...,w_{n}\}$ tale che $$M_{\mathscr{B}}(\beta)=\begin{pmatrix}I_k\\ &-I_h\\ && 0\end{pmatrix}; \; M_\mathscr{B'}(\beta)=\begin{pmatrix}I_{k'}\\ &-I_{h'}\\ && 0\end{pmatrix}$$Allora $h = h'$ e $k = k'$ 

>[!def] Definizione di Segnatura di una matrice 
Diciamo che la terna $(k, h, n-(k+h))$ è la segnatura di $\beta$ (o, equivalentemente, della matrice ad essa associata rispetto ad una qualsiasi base)
> In queste notazioni, $k$ si chiama Indice di Positività, $h$ si chiama indice di negatività e $n-k-h$ si chiama Indice di Nullità

Dopo questa definizione in teorema di Sylvester diventa: "Date $A, B \in M_n{\mathbb{R}}$ simmetriche. $A$ e $B$ sono congruenti se e solo se hanno la stessa segnatura"

***Dimostrazione del Teorema di Sylvester***:
	Dal momento che le matrici descrivono la stessa forma $\beta$ rispetto a basi diverse, esser devono avere lo stesso rango, quindi $k+h=k'+h'$ o equivalentemente $dim(rad(\beta))=n-(h+k)=n-(k'+h')$ 
	Quindi possiamo supporre $\beta$ non degenere.
	Indichiamo con $W=Span\{v_1,...,v_k\}$ e sia $z \in W\Leftrightarrow \alpha_1v_1+...+\alpha_kv_k \in \mathbb{R}\Rightarrow \beta(z,z)=\displaystyle{\beta\left(\sum^k_{i=1} \alpha_iv_i, \sum^k_{j=1}\alpha_jv_j \right)}=$$=\displaystyle{\sum^k_{i,j=1}\alpha_i\alpha_j\underbrace{\beta(v_i,v_j)}_{\delta_{i,j}}=\sum^k_i\alpha_i^2≥0}$   e $\beta(z,z)=0\Leftrightarrow z = 0\Leftrightarrow \alpha_i = 0,\forall i \in \{v_1,...,v_k\}$ 
	In maniera del tutto analoga, se indichiamo con $T = Span\{w_{k'+1},...,w_{k'+h'}\}$ e prendiamo $u \in T\Rightarrow \beta(u,u)≤0$ (visto che $\forall i \in T, \beta(v_i,v_i)=-1$) e $\beta(u,u)=0\Leftrightarrow u=0$
	Supponiamo per assurdo che $k>k'\Leftrightarrow h<h'$ per mantenere l'uguaglianza $k+h=k'+h'$ per non avere $\beta$ non degenere. Per la formula di Grassmann, dal momento che $k+h'>n\Rightarrow W\cap T ≠\{0\}\Rightarrow \exists z ≠0\in W\cap T$ ma $\begin{cases}z \in W \Rightarrow \beta(z,z)>0\\ z \in T \Rightarrow \beta(z,z)<0\end{cases}$ e ciò non è possibile in quanto $z≠0\Rightarrow k=k'$ e $h=h'$

>[!def] Forma $\beta$ Definita Positiviamente e Negativamente
>Una forma bilineare simmetrica $\beta$ su $V=\mathbb{R}$ spazio vettoriale si dice Definita Positivamente se $\forall v \in V, v≠0, \beta(v,v)>0$. Una forma bilineare definita positivamente si chiama anche Prodotto Scalare. 
>Una forma bilineare $\beta'$ su $V=\mathbb{R}$ spazio vettoriale si definisce Definita Negativamente se $\forall v\in V, v≠0, \beta(v,v)<0$ 
	
Una forma bilineare definita positivamente è non degenere, dalla segnatura uguale a $(n,0,0)$ con $n=$ rango della matrice e $\exists \mathscr{B}$ tale che $M_\mathscr{B}(\beta)=I_n$. La sua restrizione ad un qualsiasi sottospazio resta definita positivamente e quindi non degenere, Inoltre tutte le matrici definite positivamente sono caratterizzate dal fatto di essere congruenti a $I_n$ ossia $\exists H \in Gl_n(\mathbb{R}):A=H^TI_nH=H^TH$ 

*Un ragionamento analogo può essere fatto con le definite negativamente, congruenti a $-I_n$ e con segnatura $(0,n,0)$*

**Esercizio**:
	Sia $V = \mathbb{R}_{≤2}[x]$ e sia $\beta:V \times V \rightarrow \mathbb{R}:\beta(p,q)=p(1)q(-1)+p(-1)q(1)$ 
	1) Data $\mathscr{B}=\{1,x,x^2\}$ scrivere $M_\mathscr{B}(\beta)$ e la segnatura di $\beta$
	2) Calcolare $rad(\beta)$
	3) Dato $W=Span\{x+x^2\}$, calcolare $W^\bot$

**Soluzione**:
	1) Calcoliamo prima $M=M_\mathscr{B}(\beta)$$$M=M_\mathscr{B}(\beta)=\begin{pmatrix}\beta(1,1) & \beta(1,x) & \beta(1,x^2)\\ \beta(x,1) & \beta(x,x) & \beta(x,x^2)\\ \beta(x^2,1)& \beta(x^2,x) & \beta(x^2,x^2)\end{pmatrix}=\begin{pmatrix}2 & 0  & 2\\ 0 & -2 & 0\\ 2 & 0 &2\end{pmatrix}$$Prima di cercare le segnature, calcoliamo prima la dimensione del radicale: $dim(rad(\beta))=3-rg(M)=1$.
		Le tre possibili segnature sono $(2,0,1), (1,1,1), (0,2,1)$ ma si riesce a vedere facilmente che la segnatura giusta è $(1,1,1)$ perché se si considera la restrizione della matrice a $S=Span\{1,x\}$ si può vedere che la base $\mathscr{B}_S=\{1,x\}$ è ortogonale rispetto ad $S$ e $\beta(1,1)=2>0$ e $\beta(x,x)=-2<0$ quindi avrebbe segnatura $(1,1)$. Quindi la sua segnatura è $(1,1,1)$
	2) Chi è $rad(\beta)$? Dal punto precedente sappiamo che $dim(rad(\beta))=1$, quindi ci è sufficiente trovare un solo vettore, ossia: $$rad(\beta)=\left\{\left.\begin{pmatrix}x\\ y\\ z\end{pmatrix} \in\mathbb{R_{≤2}}[x]\;\right|\;\beta\left(\begin{pmatrix}x\\ y\\ z\end{pmatrix}, v\right)=0, \forall v \in V\right\}=Span\left\{\begin{pmatrix}1\\0\\-1\end{pmatrix}\right\}$$
	3) $W^\bot=\left\{\left.\begin{pmatrix}a\\ b\\ c\end{pmatrix}\in V\;\right|\; \begin{pmatrix}a & b & c \end{pmatrix}M\begin{pmatrix}0\\1\\1\end{pmatrix}=0\right\}\Rightarrow \left\{\begin{pmatrix}a & b & c\end{pmatrix}\begin{pmatrix}2\\-2\\2\end{pmatrix}\right\} \Rightarrow 2a-2b+2c = 0\Rightarrow b = a+c\Rightarrow$$\Rightarrow W^\bot = Span\left\{\begin{pmatrix}1\\1\\0\end{pmatrix}, \begin{pmatrix}0\\1\\1\end{pmatrix}\right\}$ 

Fino adesso abbiamo lavorato su $\mathbb{C}$ (o un qualsiasi campo $\mathbb{K}$ algebricamente chiuso e a caratteristica diversa da $2$) e su $\mathbb{R}$, ma su $\mathbb{Q}$ cosa si può dire? Se si riprende l'esercizio sulle congruenze delle matrici $$\begin{pmatrix}0 & I_n\\ I_n & 0\end{pmatrix}, \; \begin{pmatrix}I_n & 0\\ 0 & -I_n\end{pmatrix}, \; \begin{pmatrix}^{0\;1}_{1 \; 0} && 0\\& \ddots\\ 0 && ^{0\;1}_{1 \; 0}\end{pmatrix} = A_{pi}$$avevamo ottenuto che su $\mathbb{R}$ la nuova base diventa $\mathscr{B}'=\{\frac{v_1+v_{n+1}}{\sqrt{2}},...,\frac{v_n+v_{2n}}{\sqrt{2}}, \frac{v_1-v_{n+1}}{\sqrt{2}},...,\frac{v_{n}-v_{2n}}{\sqrt{2}}\}$ ma non la si può esportare direttamente a $\mathbb{Q}$ in quanto $\sqrt{2}\notin \mathbb{Q}$, però la si può modificare fino ad ottenere $\mathscr{B'}=\{...,v_i+\frac{v_{i+n}}{2},v_i-\frac{v_{i+n}}{2},...\}, \forall i \in \{1,...,n\}$


## Forme Bilineari Simmetriche
*Supponiamo per il momento che $\beta$ sia una forma bilineare simmetrica definita positivamente*

Sia $\mathscr{B}=\{v_1,...,v_n\}$ una base qualsiasi di $V$. Il metodo di Gram-Schmidt produce una nuova base di $V=\{w_1,...,w_n \}$ ortogonale e che $Span\{v_1,...,v_k\}=Span\{w_1,...,w_k\},\forall k \in \{1,...,n\}$, ossia preserva tutti i sottospazi

*Come funziona?*
Si parte dal primo vettore della base $w_1$ e lo si prende uguale a $v_1$
Per il secondo vettore $w_2$ si prende $v_2$ e si toglie la "componente $v_1$ da $v_2$", in pratica si prende $w_2=v_2-\alpha v_1$ affinché $w_2 \in Span\{w_1\}^\bot \Leftrightarrow \beta(w_2,w_1)=0$ 
*Come posso trovare $\alpha$?* $\beta(v_2-\alpha_1,v_1)=0\Rightarrow \beta(v_2,v_1)-\alpha\beta(v_1,v_1)=0\Rightarrow \alpha = \frac{\beta(v_2,v_1)}{\beta(v_1,v_1)}\Rightarrow w_2=v_2-\frac{\beta(v_2,v_1)}{\beta(v_1,v_1)}v_1$ 
E così si procede induttivamente, ossia $$w_{k+1}=v_{k+1}-\displaystyle{\sum^k_{i=1}\frac{\beta(v_{k+1},w_i)}{\beta(w_i,w_i)}}w_i$$
**Osservazione**: La notazione di definita positivamente ha senso perché $V = \mathbb{R}$ spazio vettoriale, in altri campi $\mathbb{K}$ non ha senso (però può avere senso anche su tutti i sottocampi di $\mathbb{R}$ tra cui $\mathbb{Q}$) 

**Osservazione**: Se $\beta$ è una forma bilineare definita positiva, allora è anche non degenere (infatti se lo fosse stato, ci sarebbe stato un vettore $v \in V, v≠0$ tale che $\beta(v,w)=0 ,\forall w \in V$ ma $\beta(v,v)≠0$ perché definita positiva). Se $W \subseteq V$ è un sottospazio vettoriale $\Rightarrow \beta|_W$ è ancora definita positiva e di conseguenza non degenere. Quindi se $\beta$ è definita positiva $\Rightarrow \forall W \subseteq V, V = W\oplus W^\bot$ 

**Osservazione**: Su $\mathbb{R}$, se $\beta$ ha matrice $M_\mathscr{B}(\beta)$ rispetto ad una certa base $\mathscr{B}\Rightarrow \beta$ è definita positiva $\Leftrightarrow$ è congruente a $I_n$, ossia $\exists A \in GL_n(\mathbb{R})$ tale che $M_\mathscr{B}(\beta)=A^TA$ 

>[!def] Procedimento di Gram-Schmidt
>Data una base $\mathscr{B}=\{u_1,...,u_n\}$, il procedimento di Gram-Schmidt produce $\mathscr{B'}=\{v_1,...,v_n\}$ ortogonale rispetto a $\beta$ tale che $\forall i \in \{1,...,n\}, Span\{u_1,...,u_i\}=Span\{v_1,...,v_i\}$ 

**Osservazione**: Questa condizione equivale a dire che $M_\mathscr{B'}^{\mathscr{B}}(id)$ è triangolare superiore.

*Come funziona*? (Già scritto sopra ma fatto in modo diverso, ma $v_i\rightarrow u_i$ e $w_i\rightarrow v_i$):
Si pone $v_1 = u_1$. Se ho costruito $v_1,...,v_k$ come nell'enunciato $\Rightarrow v_{k+1}=u_{k+1}-\displaystyle{\sum^k_{\ell = 1}\frac{\beta(v_\ell, u_{k+1})}{\beta(v_\ell, v_\ell)}}v_\ell$, dove la sommatoria non è altro che la proiezione di $u_{k+1}$ in $Span\{v_1,...,v_k\}$

Significato grafico:
![[Drawing 2023-05-04 14.19.37.excalidraw | {width = 100%}]]

**Esempio**:
	Sia $\beta$ la forma bilineare definita positivamente di matrice (rispetto alla base canonica $\mathscr{B}$) $$M_\mathscr{B}(\beta)=\begin{pmatrix}1 & 1 & 2\\ 1 & 2 & 1\\ 2 & 1 &8\end{pmatrix}$$Applichiamo Gram-Schmidt.
	Poniamo $v_1 = e_1$ quindi $\displaystyle{v_2 = e_2 - \frac{\beta(e_2,v_1)}{\beta(v_1,v_1)}v_1 = e_2-\frac{\beta(e_2,e_1)}{\beta(e_1,e_1)}e_1 = \begin{pmatrix}0\\1\\0\end{pmatrix}-\begin{pmatrix}1\\0\\0\end{pmatrix}=\begin{pmatrix}-1\\1\\0\end{pmatrix}}$  
	Allora $\displaystyle{v_3 = e_3- \frac{\beta(e_3,v_1)}{\beta(v_1,v_1)}v_1 - \frac{\beta(e_3,v_2)}{\beta(v_2,v_2)}v_2}$, attraverso la bilinearità di $\beta$ (oppure facendo i calcoli direttametne) si riesce ad arrivare a $\begin{pmatrix}0\\0\\1\end{pmatrix}-2\begin{pmatrix}1\\0\\0\end{pmatrix} + \begin{pmatrix}-1\\1\\\end{pmatrix} = \begin{pmatrix}-3\\1\\1\end{pmatrix} \Rightarrow \mathscr{B'}=\left\{\begin{pmatrix}1\\0\\0\end{pmatrix}, \begin{pmatrix}-1\\1\\0\end{pmatrix},\begin{pmatrix}-3\\1\\1\end{pmatrix}\right\}$ 

**Proviamo con il vecchio metodo**:
	Prendiamo $v_1 = e_1$. Calcoliamo $(Span\{e_1\})^\bot=\begin{pmatrix}x_1 & x_2 & x_3\end{pmatrix}\begin{pmatrix}1 & 1 & 2\\ 1 & 2 & 1\\ 2 & 1 & 8\end{pmatrix}\begin{pmatrix}1\\0\\0\end{pmatrix}\Rightarrow x_1+x_2+2_3=0$  quindi si ottiene che $(Span\{e_1\})^\bot=Span\left\{\begin{pmatrix}1\\-1\\0\end{pmatrix},\begin{pmatrix}2\\0\\-1\end{pmatrix}\right\}$ *In teoria bisognerebbe controllare che $\beta(e_1,e_1)≠0$, ma poiché sappiamo che $\beta$ è definita positivamente, non c'è problema*
	Adesso devo scegliere un $v_2≠0$ tale che sia ortogonale a $v_1$ sicuramente non sarà isotropo perché $\beta$ è definita positivamente.
	Prendo $v_2 = \begin{pmatrix}2\\0\\-1\end{pmatrix}\Rightarrow \left(Span\left\{\begin{pmatrix}2\\0\\-1\end{pmatrix}, \begin{pmatrix}1\\0\\0\end{pmatrix}\right\}\right)^\bot\Rightarrow \begin{cases}x_1+x_2+2x_3=0\\ \begin{pmatrix}x_1 & x_2 & x_3\end{pmatrix}\begin{pmatrix}1 & 1 & 2\\ 1 & 2 & 1\\ 2 & 1 & 8\end{pmatrix}\begin{pmatrix}2\\0\\-1\end{pmatrix}\end{cases}\Rightarrow \begin{cases}x_1+x_2+2x_3=0\\ x_2-4x_3=0\end{cases}$ 
	Da cui si ottiene che $v_3 = \begin{pmatrix}-6\\ 4\\ 1\end{pmatrix}$ e per questo motivo $\mathscr{B'}=\left\{\begin{pmatrix}1\\0\\0\end{pmatrix}, \begin{pmatrix}2\\0\\-1\end{pmatrix}, \begin{pmatrix}-6\\4\\1\end{pmatrix}\right\}$ 

>[!def] Definizione di Base Ortonormale
>Sia $\beta$ una forma bilineare simmetrica definita positiva. Se $\{v_1,...,v_n\}$ è una base ortogonale ottenuta tramite il metodo di Gram-Schmidt a partire da $\{u_1,...,u_n\}$ e dal momento che $\beta(v_i,v_i)>0$, la base $\{v_1'=\frac{v_1}{\sqrt{\beta(v_1,v_1)}},...,v_n'=\frac{v_n}{\sqrt{\beta(v_n,v_n)}}\}$ si chiama base ortonormale e $\beta(v_i,v_j)=\begin{cases}1 & i=j\\ 0 & i≠j\end{cases}$. Inoltre la matrice di $\beta$ rispetto a questa base è l'identità

**Osservazione**: Se $\{v_1,...,v_n\}$ è una base ortonormale per $\beta$ definita positiva $\Rightarrow \forall v \in V, v =\beta(v,v_1)v_1+...+\beta(v,v_n)v_n$, cioè le coordinate di un vettore rispetto ad una base ortonormale sono i prodotti $\beta(v,v_i)$ del vettore $v$ con i vettori della base.

**Esempio**:
	$\mathscr{B}=\left\{\begin{pmatrix}\frac{1}{\sqrt{2}}\\ \frac{1}{\sqrt{2}}\end{pmatrix}, \begin{pmatrix}-\frac{1}{\sqrt{2}}\\ \frac{1}{\sqrt{2}}\end{pmatrix} \right\}$ è una base ortonormale rispetto al prodotto scalare standard su $\mathbb{R}^2$ 

***Dimostrazione dell'Osservazione***:
	Sia $v = a_1v_1+ ...+ a_nv_n\Rightarrow \beta(v,v_i)=\beta(a_1v_1+...+a_nv_n, v_i)\xlongequal{\text{Bilinearità}} a_1\beta(v_1,v_i)+...+a_n\beta(v_n,v_i)\xlongequal{\mathscr{B} \text{ ortogonale}}$$a_1\beta(v_1,v_1)+...+a_n\beta(v_n,v_n)$, ma $\forall i \in \{1,...,n\}, \beta(v_i,v_i)=1$ perché $\mathscr{B}$ è ortonormale.
	Da tutto ciò segue la tesi

*Conseguenza*: Se $W \subseteq V$ è un sottospazio vettoriale, prendo una base $\{u_1,...,u_k\}$ di $W$, la estendo ad una base $\{u_1,...,u_k,u_{k+1},...,u_n\}$ di $V$. Allora se applico Gram-Schmidt ottengo una base ortogonale di $V$, ma $Span\{v_1,...,v_k\}=W$, per cui $\{v_1,...,v_k\}$ è una base ortogonale di $W$
$\{v_1'=\frac{v_1}{\sqrt{\beta(v_1,v_1)}},...,v_k'=\frac{v_k}{\sqrt{\beta(v_k,v_k)}},v_{k+1}'=\frac{v_{k+1}}{\sqrt{\beta(v_{k+1},v_{k+1})}},...,v_n'=\frac{v_n}{\sqrt{\beta(v_n,v_n)}}\}$ è una base ortonormale di $V$ e $\{v_1'=\frac{v_1}{\sqrt{\beta(v_1,v_1)}},...,v_k'=\frac{v_k}{\sqrt{\beta(v_k,v_k)}}\}$ è una base ortonormale di $W$ inoltre $\{\underbrace{v_1',...,v_k'}_{\in W},\underbrace{v_{k+1}',...,v_n'}_{\in W^\bot}\}$ 
Quest'espressione ci dice che $\beta(v_,v_1')v_1'+...+\beta(v,v_k')v_k'$ è la proiezione di $v$ in $W$ rispetto alla scomposizione $V = W\oplus W^\bot$, analogamente $v-\beta(v_,v_1')v_1'+...+\beta(v,v_k')v_k'$ è la scomposizione di $v$ in $W^\bot$

**Osservazione**: Per calcolare queste due proiezioni non è necessaria tutta la base di $V$, basta la base di $W\Rightarrow v-\beta(v_,v_1')v_1'+...+\beta(v,v_k')v_k'=v-\beta(v,\frac{v_1}{\sqrt{\beta(v_1,v_1)}})\frac{v_1}{\sqrt{\beta(v_1,v_1)}}-...-\beta(v,\frac{v_k}{\sqrt{\beta(v_k,v_k)}})\frac{v_k}{\sqrt{\beta(v_k,v_k)}}$ che per bilinearità di $\beta$ diventa: $v-\frac{\beta(v,v_1)}{\beta(v_1,v_1)}v_1-...-\frac{\beta(v,v_k)}{\beta(v_k,v_k)}v_k$ che è esattamente la formula per calcolare il $k+1$-esimo vettore della base ortonormale attraverso il metodo di Gram-Schmidt
Quindi è la proiezione di $u_{k+1}$ sull'ortogonale del sottospazio generato da $Span\{v_1,...,v_n\}=Span\{u_1,...,u_n\}$ 
*Questo spiega il significato geometrico della proiezione di Gram-Schmidt*

*Perché funziona?* Abbiamo dimostrato che il metodo Gram-Schmidt funziona se $\beta$ è simmetrica definita positiva.
*Ma abbiamo veramente utilizzato il fatto che è definita positivamente?*
No: quello che si è usato davvero è che $\forall k \in \{1,...n\}, Span\{u_1,...,u_k\}\oplus (Span\{u_1,...,u_k\})^\bot=V$, cioè supponendo che $\beta$ sia non degenere (analogamente che $Span\{u_1,...,u_n\}\cap (Span\{u_1,...,u_n\})^\bot=\{0\}, \forall k \in \{1,...,n\}$) 

**Osservazione**: Se $k = 1\Rightarrow u_1$ non è isotropo

>[!def] Vettore Psicotropo
>Un vettore non isotropo si chiama Psicotropo

In generale il metodo di Gram-Schmidt può essere enunciato:

>[!th] Teorema 
>Siano $\beta$ una forma bilineare simmetrica su $V$ (su un $\mathbb{K}$ qualsiasi) non degenere e $\mathscr{B}=\{u_1,...,u_n\}$ una base tale che $\forall k \in \{1,...,n\}, \beta|_{Span\{u_1,...,u_k\}}$ è non degenere $\Rightarrow$ Il procedimento di Gram-Schmidt costruisce una base $\{v_1,...,v_n\}$ ortogonale per $\beta$ tale che $Span\{v_1,...,v_k\}=Span\{u_1,...,u_k\}, \forall k \in \{1,...,n\}$

*La dimostrazione è analoga a quella precedente, ossia del caso particolare*

**Osservazione**: Supponiamo $\beta$ una forma bilineare simmetrica su $\mathbb{K}^n$ associata alla matrice $$\begin{pmatrix}b_{1,1} & ... & b_{1,n}\\ \vdots & \ddots & \vdots\\ b_{n,1} & ... & b_{n,n}\end{pmatrix}$$e prendiamo $\mathscr{B}=\{e_1,...,e_n\}$. Come faccio a vedere se vale la condizione dell'enunciato del teorema?
Devo vedere se i determinanti delle matrici delle restrizioni di $\beta$ a $Span\{e_1,...,e_k\}, \forall k \in \{1,...,n\}$ hanno determinante diverso da $0$, ovvero: $$det(b_{1,1})≠0\Leftrightarrow b_{1,1}≠0; \quad det\begin{pmatrix}b_{1,1}& b_{1,2}\\ b_{2,1} & b_{2,2}\end{pmatrix}≠0; \quad ...; \quad det\begin{pmatrix}b_{1,1} & ... & b_{1,k}\\ \vdots & \ddots & \vdots\\ b_{k,1} & ... & b_{k,k}\end{pmatrix}≠0; \quad...;\quad det\begin{pmatrix}b_{1,1} & ... & b_{1,n}\\ \vdots & \ddots & \vdots\\ b_{n,1} & ... & b_{n,n}\end{pmatrix}≠0$$
>[!def] Definizione di Minori Principali o  Minori di Nord Ovest
>Sia $A \in M_n(\mathbb{K})$. Si definiscono Minori Principali o Minori di Nord Ovest di $A$ le restrizioni di $A$ del tipo:$$(a_{1,1}); \quad\begin{pmatrix}a_{1,1}& a_{1,2}\\ a_{2,1} & a_{2,2}\end{pmatrix}; \quad ...; \quad \begin{pmatrix}a_{1,1} & ... & a_{1,k}\\ \vdots & \ddots & \vdots\\ a_{k,1} & ... & a_{k,k}\end{pmatrix}; \quad...;\quad \begin{pmatrix}a_{1,1} & ... & a_{1,n}\\ \vdots & \ddots & \vdots\\ a_{n,1} & ... & a_{n,n}\end{pmatrix}$$

Il problema principale diventerà: *Come si trova la segnatura di una matrice*?

Si sa che se $\mathscr{B}=\{w_1,...,w_n\}$ è una base ortogonale rispetto a $\beta$ si ha che $M_\mathscr{B}(\beta)$ è diagonale e si contano i segni.

*Riprendendo quanto già detto*:
	Sia $A \in M_n(\mathbb{R})$ simmetrica $(A=A^T)$. Se i determinanti dei minori principali di $A$ ($det(A_k)$) è diverso da $0, \forall k \in \{1,...,n\}$ allora possiamo usare il metodo di Gram-Schmidt per trovare una base ortogonale $\{w_1,...,w_2\}$ tale che $Span\{w_1,...,w_k\}=Span\{v_1,...,v_k\}, \forall k \in \{1,...,n\}$  

Se io prendo $A_k=M_{\{v_1,...,v_k\}}(\beta|_{Span\{v_1,...,v_k\}})$ ottengo una matrice $\in M_k(\mathbb{R})$ che non è altro che la restrizione di $M_\mathscr{B}(\beta)$ ai primi $k$ vettori. Ma poiché con Gram-Schmidt ottengo che $Span\{v_1,...,v_k\}=Span\{w_1,...,w_k\}$ quindi $A'_k=M_{\{w_1,...,w_k\}}(\beta|_{Span\{w_1,...,w_k\}})$ è diagonale. Quindi $\forall k \in \{1,...,k\}, A_k$ e $A'_k$ sono congruenti $\Rightarrow$ il segno dei determinanti dei minori principali di $A$ determinano la sua segnatura, cioè la segnatura di $\beta$.

**Esempio**:
	$A$ è definita positiva $\Leftrightarrow det(A_k)>0, \forall k \in \{1,...,k\}$ 

**Esempio**:
	$A$ è definita negativamente $\Leftrightarrow det(A_1)<0$, perché $\beta(w_1,w_1)<0$, tuttavia si ottiene che $det(A_2)=det\begin{pmatrix}\beta(w_1,w_1) & 0\\ 0 & \beta(w_2,w_2)\end{pmatrix}>0$ e andando avanti così $det(A_3)<0, \; det(A_4)>0$ 
	Cioè i minori di ordine dispari hanno determinante negativo, mentre quello di ordine pari hanno determinante positivo.

**Esempio**:
	$A = \begin{pmatrix}2 & 1 & 1\\ 1& 1&1\\ 1 & 1 & 3\end{pmatrix}$ si ottiene che $det(A_1)=2$, $det(A_2)=1$ e $det(A_3)=2$ per cui $A$ è definita positiva

>[!def] Definizione di Matrice Ortogonale
>Una matrice $H \in M_n(\mathbb{R})$ si dice Ortogonale se $HH^T=H^TH=I_n$, cioè se $H \in GL_n(\mathbb{R})$ e $H^{-1}=H^T$ e le colonne di $H$ sono una base ortonormale rispetto al prodotto scalare standard

**Esempi**:
	1) Identità (Banale)
	2) $H = \begin{pmatrix}0 & 1\\ -1 & 0\end{pmatrix}\Rightarrow H^T=\begin{pmatrix}0 & -1\\ 1 & 0\end{pmatrix}\Rightarrow HH^T=H^TH = I_2$ 
	3) $K =\begin{pmatrix}0 & 2\\ -2 & 0\end{pmatrix}$ non va bene perché $KK^T=K^TK=4I_2$ 
	4) $A = \begin{pmatrix}\frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}}\\ \frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}}\end{pmatrix}$ va bene

**In generale**: Prendiamo $H$ tale che $H^TH$. Possiamo pensare $H = (H_1,...,H_n)$ con $H_i$ vettori colonna di $\mathbb{R}^n$ 
Allora con la trasposizione i vettori colonna diventano vettori riga e si ottiene:$$H^TH = \begin{pmatrix}H_1^T\\ \vdots \\ H_n^T\end{pmatrix}\begin{pmatrix}H_1&...& H_n\end{pmatrix} = H_i^TH_j= \delta_{i,j}$$Questo perché non è altro che il prodotto scalare standard su $\mathbb{R}^n$ 
Inoltre, il prodotto scalare standard della $i$-esima colonna di $H$ con la $j$-esima colonna deve essere uguale a $1$ se $i=j$ e $0$ se $i≠j\Rightarrow$ le colonne di $H$ rappresentano una base ortonormale di $\mathbb{R}^n$ rispetto al prodotto scalare standard

Equivalentemente utilizzando la relazione $HH^T=I_n$ si ottiene che $H$ è ortogonale $\Leftrightarrow$ le sue righe costituiscono una base ortonormale di $\mathbb{R}^n$ rispetto al prodotto scalare standard $\langle\;, \; \rangle$ 

>[!def] Definizione di Matrici Ortogonalmente Simili
>Due matrici $A,B \in M_n(\mathbb{R})$ si dicono Ortogonalmente simili se sono simili attraverso una matrice ortogonale, cioè $\exists H \in GL_n(\mathbb{R})$ tale che $H^{-1}=H^T$ e $H^{-1}AH=B$

>[!def] Definizione di Matrice Ortogonalmente Diagonalizzabile
>$A$ si dice Ortogonalmente Diagonalizzabile se è ortogonalmente similie ad una matrice diagonale

**Osservazione**: Se $A$ è una matrice ortogonalmente diagonalizzabile $\Rightarrow H^TAH=H^{-1}AH=D\Rightarrow A$ è necessariamente simmetrica $\Rightarrow A = HDH^{-1}=HDH^T \Rightarrow A^T=(HDH^T)^T=(H^T)^TD^TH^T=HDH^T=A$  
Dire che $A$ è ortogonalmente diagonalizzabile *significa* che *esiste* una base $\mathscr{B}$ di $\mathbb{R}^n$ costituita da autovettori e che sia ortonormale rispetto a $\langle\; , \;\rangle$ 

*Vale anche il viceversa?*

*Idea*: Sia $A \in M_n(\mathbb{R})$ diagonalizzabile, prendiamo $\{v_1,...,v_n\}$ di autovettori e usiamo Gram-Schmidt per *produrre una base ortonormale di autovettori* per cui la matrice è ortogonalmente diagonale e quindi simmetrica.
La parte in corsivo è sbagliata perché così facendo ottengo vettori che sono combinazioni lineari di autovettori, cioè $w_1 = v_1\Rightarrow w_2 = v_2-\alpha v_1$ che non è autovettore
Finché sto dentro allo stesso autospazio posso farlo, perché tutti i vettori di quell'autospazio sono relativi all'autovalore $\lambda$, ma non posso farlo se appartengono a due autospazi diversi.

**Attenzione**: Se combino linearmente autovettori relativi ad autovalori diversi non ottengo autovettori. Infatti affinché esista una base ortonormale di autovettori è necessario che autospazi relativi ad autovalori diversi siano già ortogonali tra loro rispetto al prodotto scalare standard

*Piccola nota*: Essere ortogonali $\Rightarrow$ Essere in somma diretta ma non vale il viceversa

**Proposizione**: Sia $A \in M_n(\mathbb{R}), A=A^T$ e siano $\lambda, \sigma$ autovalori distinti di $A$ ($\lambda≠\sigma$) e siano $v, w \in \mathbb{R}^n$ autovettori relativi a $\lambda$ e $\sigma$ rispettivamente $\Rightarrow v$ e $w$ sono ortogonali
***Dimostrazione***:
	Calcoliamo $\lambda \langle v, w \rangle\Rightarrow \langle Av, w\rangle \Rightarrow (Av)^Tw=v^TA^Tw = v^TAw\Rightarrow \langle v, AW \rangle \Rightarrow \sigma \langle v, w \rangle\Rightarrow \underbrace{(\lambda-\sigma)}_{≠0}\langle v, w \rangle = 0\Rightarrow \langle v, w\rangle =0$ 

**Riflessione Importante**: Supponiamo $A$ simmetrica ortogonalmente diagonalizzabile $\Rightarrow H^{-1}AH=H^TAH=D$ 
1) $\exists$ base ortonormale rispetto a $\langle\; , \; \rangle$ di autovettori di $A$ endomorfismo (da $H^{-1}AH=D$)
2) Sulle colonne di $H$ c'è una base ortogonale rispetto alla forma bilineare simmetrica $\beta_A$ associata ad $A$ ($H^TAH=D$)

>[!def] Definizione di Endomorfismo Aggiunto
>Sia $V$ un $\mathbb{K}$ spazio vettoriale con una forma bilineare simmetrica non degenere $\beta$ e sia $f \in End(V)$. Indichiamo con $f^{AD}$ l'endomorfismo aggiunto di $V$ (aggiunto di $f$ rispetto a $\beta$) così definito $$V \ni v \mapsto f^{AD}(v)$$dove $v$ è l'unico vettore di $V$ tale che $\beta(f^{AD}(v), w) = \beta(v, f(w)), \forall w \in V$

**Osservazione**: Osserviamo che la definizione è ben posta, cioè $f^{AD}(v)$ è univocamente determinato dal momento che se fosse $f(\tilde{v}, w) = \beta(v, f(w))=\beta(f^{AD}(v), w), \forall w \in V(\star)$, avrei che $\beta(\tilde{v}-f^{AD}(v), w)=0, \forall w \in V\Rightarrow w \in V\Rightarrow$ $\Rightarrow \tilde{v} - f^{AD}(v) \in rad(\beta)$ ma $\beta$ è non degenere, quindi $\tilde{v} = f^{AD}(v)$ 

*Dimostrare che $f^{AD}$* (tutto dipende dalla linearità di $f$ e di $\beta$) 

*Come sono collegati $f$ e $f^{AD}$?*
Fissiamo $\mathscr{B}$ base di $V$ e scriviamo tutto in coordinate $$v = \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix} = x; \quad w=\begin{pmatrix}y_1\\ \vdots\\ y_n\end{pmatrix}= y; \quad M_\mathscr{B}(f) = F; \quad M_\mathscr{B}(f^{AD})=F^{AD}; \quad B = M_\mathscr{B}(\beta) \in GL_n(\mathbb{K})$$In particolare è invertibile perché $\beta$ è non degenere.
Da $(\star)$ si ha che $(F^{AD}x)^TBy = x^TBFy, \forall x,y \Rightarrow x^T(F^{AD})^TBy=x^TBFy\Leftrightarrow (F^{AD})^T=BFB^{-1}\Rightarrow F^{AD}=(BFB^{-1})^T=$$=(B^{-1})^TF^TB^T=F^{AD}=B^{-1}FB$  (Il tutto sfruttando la simmetria di $B$ e il fatto che $(B^{-1})^T=(B^T)^{-1}$) 
Cioè la matrice di $F^{AD}$ rispetto a $\mathscr{B}$ è coniugata mediante $B$ a $F^T$ 

**Osservazione 1**: $(F^{AD})^{AD}=B^{-1}\underbrace{(B^{-1}FB)^T}_{F^{AD}}B=B^{-1}B^T(F^T)^T(B^{-1})^TB= \underbrace{B^{-1}B}_{I_n}F\underbrace{B^{-1}B}_{I_n}=F$ 

**Osservazione 2**: Sia $\mathbb{K} = \mathbb{R}\Rightarrow V=\mathbb{R}$ spazio vettoriale e $\beta$ forma bilineare simmetrica definita positiva. Posso scegliere $\mathscr{B}$ base ortonormale rispetto a $\beta\Rightarrow B = I_n\Rightarrow F^{AD}=I_n^{-1}F^TI_n=F^T \in M_n(\mathbb{R})$, cioè la matrice associata a $F^{AD}$ rispetto ad una base ortonormale è la trasposta della matrice di $f$ rispetto a quella stessa base.

>[!def] Definizione di Endomorfismo Autoaggiunto rispetto ad una forma bilineare simmetrica $\beta$
>Un endomorfismo $f$ di un $\mathbb{K}$ spazio vettoriale su cui è definita una forma bilineare simmetrica non degenere si dice Autoaggiunto (o Simmetrico) se $f^{AD}=f$

**Osservazione 2 bis**: Se $V = \mathbb{R}$ spazio vettoriale con un prodotto scalare $\beta$, $f$ è un endomorfismo autoaggiunto rispetto a $\beta$ se e solo se la matrice $M_\mathscr{B}(f)$ ad essa associata, rispetto ad una base ortonormale di $\beta$, è simmetrica

Quindi, in particolare, studiare forme bilineari simmetriche reali, significa studiare gli endomorfismi autoaggiunti di un $\mathbb{R}$ spazio vettoriale con un prodotto scalare

>[!def] Definizione di Piano Euclideo
>Si definisce un Piano Euclideo un $\mathbb{R}$ spazio vettoriale con un prodotto scalare, ossia una forma bilineare simmetrica definita positiva

**Esercizio**: L'applicazione $ad:\begin{matrix}End(V) & \rightarrow & End(V)\\ f & \mapsto & f^{AD}\end{matrix}$ è lineare e un automorfismo

>[!th] Proprietà 1 di $f^{AD}$
>Sia $V$ un $\mathbb{K}$ spazio vettoriale, $\beta$ una forma bilineare simmetrica non degenere, $f \in End(V)$. $U\subseteq V$ è $f$ invariante $\Leftrightarrow U^\bot$ è $f^{AD}$ invariante

***Dimostrazione***:
	$\Rightarrow)$ Supponiamo $U$ $f$-invariante. Sia $z \in U^\bot \xRightarrow{?} f^{AD}(z) \in U^\bot$ 
		Basta calcolarlo: $\forall u \in U, \; \beta(f^{AD}(z), u)=\beta(z, f(u))$ ma $f(u) \in U\Rightarrow \beta(z, f(u))\xlongequal{z \in U^\bot}0\xRightarrow{\beta \text{ non degenere}} f^{AD}(z)\in U^\bot$ 
	$\Leftarrow)$ Mi è sufficiente scambiare $U$ con $U^\bot$ e procedo come prima: ho dimostrato che $U$ è $f$ invariante $\Rightarrow U^\bot$ è $f^{AD}$ 
		invariante e lo applico a $U^\bot$ e $f^{AD}\Rightarrow U$ è $f^{AD}$ invariante $\Rightarrow (U^\bot)^\bot$ è $(f^{AD})^{AD}$ invariante (Per l'osservazione prima e perché $\beta$ è non degenere $\Rightarrow (U^\bot)^\bot = U$)

**Osservazione**: Se $f$ è autoaggiunto, questa proprietà diventa "$U$ è $f$ invariante $\Leftrightarrow U^\bot$ è $f$ invariante", questo perché se $\beta$ è non degenere, allora $V = U \oplus U^\bot$ 

> [!th] Proprietà 2 di $f^{AD}$
> $$Ker(f^{AD})=(Im(f))^\bot$$

***Dimostrazione***: 
	$v \in Ker(f^{AD})\Leftrightarrow f^{AD}(v)=0 \xLeftrightarrow{\beta \text{ non degenere}} \beta(f^{AD}, w)=0, \forall w \in V \Leftrightarrow \beta(v, f(w))=0\Leftrightarrow v \in (Im(f))^\bot$ 

>[!th] Proprietà 3 di $f^{AD}$
>$$Im(f^{AD})=(Ker(f))^\bot$$

***Dimostrazione***:
	Usando la $2$ con $f^{AD}$ al posto di $f$ si ha $Ker((f^{AD})^{AD})=(Im(f^{AD}))^\bot \Leftrightarrow Ker(f)=(Im(f))^\bot \xlongequal{\beta\text{ non degenere}} Im(f^{AD})=Ker(f)^\bot$  

>[!th] Proprietà 4 di $f^{AD}$
>Il seguente diagramma è commutativo: $$\begin{matrix}V & \xrightarrow{f^{AD}} & V\\ \downarrow ^{B_\beta} & \circlearrowright & \downarrow ^{B_{\beta}}\\ V^* & \xrightarrow{f^*} & V^*\end{matrix}$$

***Dimostrazione***:
Dimostrare che è commutativo equivale a dimostrare che $B_\beta \circ f^{AD} = f^* \circ B_\beta$$\forall v \in V, B_\beta({AD}(v))=f^*(B_\beta(v)\in v^* \Leftrightarrow \forall w \in V, B_\beta(f^{AD}(v))(w)=\left(f^*(B_\beta(v))\right)(w) \Leftrightarrow \beta(f^{AD}(v), w)=B_\beta(v)(f(w))=\beta(v,f(w))$Direttamente dalla definizione di $f^{AD}$

*Se fosse stato scritto attraverso le coordinate, il tutto poteva essere dimostrato con le matrici e usando la notazione precedente sarebbe stato $F^{AD}=B^{-1}F^TB$*

>[!th] Teorema Spettrale
>Sia $V$ uno spazio euclideo con prodotto scalare $\beta$ e sia $f$ un endomorfismo autoaggiunto di $V$, allora esiste una base $\mathscr{B}$ di $V$ ortonormale rispetto a $\beta$ costituita da autovettori di $f$, cioè $f$ è ortogonalmente diagonalizzabile

***Procedimento per la  Dimostrazione*** *una di quelle più elementari*:
	La dimostrazione si svolgerà in due passi:
	**Passo 1**: Mostrare che $f$ ha autovalori reali
	**Passo 2**: Per induzione sulla dimensione di $V$ (Per il passo uno abbiamo un autovalore $\lambda \in \mathbb{R}\Rightarrow \exists v_1$ autovettore $\in V$ relativo a $\lambda$, quindi possiamo spezzare $V = Span\{v_1\} \oplus (Span\{v_1\})^\bot$ - in particolare se $\beta(v_1,v_1)≠1$ possiamo prendere un autovettore $w_1 = \frac{v_1}{\sqrt{\beta(v_1,v_1)}}$) 

Prima di fare per bene la dimostrazione diamo una definizione:
>[!def] Definizione di Prodotto Hermitiano in $\mathbb{C}^n$
>Dati $v, w \in \mathbb{C}^n$ si definisce prodotto Hermitiano il prodotto: $$\overline{\beta}(v, w) = \overline{\beta}\left(\begin{pmatrix}v_1\\ \vdots \\ v_n\end{pmatrix}, \begin{pmatrix}w_1\\ \vdots\\ w_n\end{pmatrix} \right) = \begin{pmatrix}v_1 & ... & v_n\end{pmatrix}\begin{pmatrix}\overline{w_1}\\ \vdots\\ \overline{w_n}\end{pmatrix} = v_1\overline{w_1} + ... + v_n\overline{w_n}$$ 

***Dimostrazione***:
	**Passo 1**: Mostrare che $f$ ha almeno un autovalore reale.
	Ragioniamo in termini matrici fissiamo una base $\mathscr{B}$ di $V$ ortonormale rispetto a $\beta$ (perché è definita positivamente) e indichiamo con $F \in M_\mathscr{B}(f)$. Supponiamo $f$ sia un endomorfismo autoaggiunto, ossia $F^T = F \in M_n(\mathbb{R})$ 
	Leggiamo $F \in M_n(\mathbb{R})\subseteq M_n(\mathbb{C})$. Poiché $\mathbb{C}$ è algebricamente chiuso, $F$ ha almeno (a seconda se sono distinti o meno) un autovalore $\lambda \in \mathbb{C} \Leftrightarrow \exists x \in \mathbb{C}^n, x≠0$ tale che $Fx = \lambda(x)$
	Osserviamo che:
	1) $x = \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}$ con $x_i \in \mathbb{C}\Rightarrow \overline{Fx} = \overline{\lambda x} = \overline{\lambda}\overline{x}$, dove $\overline{x}=\begin{pmatrix}\overline{x_1} \\ \vdots \\ \overline{x_n}\end{pmatrix}$. Ma è vero anche che $\overline{Fx}=\overline{F}\overline{x}$ con $\overline{F}=(\overline{f})_{i,j}$. Ma $F\in M_n(\mathbb{R})\Rightarrow F= \overline{F}\Rightarrow \overline{Fx}=\overline{F}\overline{x}=F\overline{x}$   
	2) $x = \begin{pmatrix}x_1\\ \vdots \\ x_n\end{pmatrix}$ e $\overline{x}=\begin{pmatrix}\overline{x_1} \\ \vdots \\ \overline{x_n}\end{pmatrix}$. Se facciamo $x^T\overline{x}=\begin{pmatrix}x_1 & ... & x_n\end{pmatrix}\begin{pmatrix}\overline{x_1}\\ \vdots \\ \overline{x_n}\end{pmatrix} = \displaystyle{\sum^n_{i = 1} x_i \overline{x_i}}\xlongequal{x_i\overline{x_i} = |x_i|^2}  \displaystyle{\sum^n_{i = 1}|x_i|^2}≥0$. In particolare $x^T\overline{x} = 0 \Leftrightarrow x_i = 0, \forall i \Leftrightarrow x = 0$
	Ora calcoliamo $(Fx)^T\overline{x} = x^TF^T\overline{x}\xlongequal{F^T = F}x^TF\overline{x} \xlongequal{x \text{ autovettore}} x^T \overline{\lambda} \overline{x} \xlongequal{\lambda \in \mathbb{C}}\overline{\lambda}(x\overline{x})$, ma è anche vero che $(Fx)^T\overline{x} = (\lambda x)^T\overline{x} = \lambda(x \overline{x})$ (per gli stessi motivi di sopra), da cui si ottiene eguagliando che $(\lambda- \overline{\lambda})(x^T\overline{x})=0\xRightarrow{x≠0}\lambda- \overline{\lambda}=0\Rightarrow \lambda = \overline{\lambda}\Rightarrow \lambda \in \mathbb{R}$ 
	**Passo 2**: Procediamo per induzione su $n$:
	- Se $n = 1\Rightarrow F \in M_1(\mathbb{R})$ e quindi non c'è nulla da dimostrare
	- Passo induttivo: Sia $\lambda$ autovalore reale di $f$ e sia $v \in V$ autovettore di $f$ relataivo a $\lambda$: $f(v)=\lambda v$
		Poniamo $v_1 = \frac{v}{\sqrt{\beta(v, v)}}$ cosicché $\beta(v_1,v_1) = 1$ 
		Poiché $\beta$ è definita positiva, $\beta|_{Span\{v_1\}}$ è definita positiva, cioè non degenere e quindi si può scomporre $V = Span\{v_1\} \oplus (Span\{v_1\})^\bot$. $Span\{v_1\}$ è $f$ invariante perché $v_1$ e dal momento che $f$ è autoaggiunto osserviamo che $(Span{v_1})^\bot$ è $f$ invariante.
		Osserviamo che $f|_{Span\{v_1\}}$ è autoaggiunta (cioè in termini di matrici $F=\begin{pmatrix}\lambda & \boldsymbol{0}\\ \boldsymbol{0} & F'\end{pmatrix}$ è simmetrica se e solo se $F'$ lo è). Quindi posso applicare l'ipotesi induttiva su $f|_{(Span\{v_1\})^\bot}$ dal momento che la dimensione di $(Span\{v_1\})^\bot=n-1$, quindi esiste una base di $(Span\{v_1\})^\bot$ ortonotmale rispetto a $\beta$ costituita da autovettori di $f$. Sia essa $\{v_2,...,v_n\}\Rightarrow \{v_1,v_2,...,v_n\}$ è una base di $V$ come nell'enunciato.

Quello che rende special il teorema spettrale non è tanto la complessità della dimostrazione ma il risultato del teorema.

**Osservazione**: Prendiamo $A \in M_n(\mathbb{R})$ simmetrica $\Rightarrow A$ è ortonormalmente diagonalizzabile $\Leftrightarrow \exists H$ ortogonale tale che $H^{-1}AH=H^TAH=D$ con $D$ diagonale. Sulle colonne di $H$ c'è una base di autovettori di $A$ (quindi $A$ è simile a $D$) che è ortonormale rispetto al prodotto scalare standard ($\beta$ del teorema)
*Infatti se prendo $\gamma = (^{2\; 1}_{1 \; 1})$, questa è definita positiva, per cui è un prodotto scalare, ma non un prodotto scalare standard rispetto alla base canonica. Chiaramente esiste una base per cui $\gamma$ è $I_2$*
Sulla diagonale di $D$ ci sono gli autovalori di $A$ (ma non è la matrice di $A$ in forma di Sylvester perché ci sono altri valori oltre a $1, -1, 0$).
$A$ è anche congruente a $D$ che è diagonale, quindi sulle colonne di $H$ ci sono vettori di una base ortogonale rispetto a $\beta_A$ (la forma bilineare simmetrica associata ad $A$ rispetto alla base canonica)
Da tutto questo si deduce che la segnatura di $A$ è determinata dal segno degli autovalori.

**Esercizio**:
	Siano $U = Span\left\{\begin{pmatrix}1\\1\\1\end{pmatrix}, \begin{pmatrix}1\\1\\0\end{pmatrix}\right\}$ e $T = Span\left\{\begin{pmatrix}1\\0\\0\end{pmatrix}\right\}$
	1) Esiste una matrice $A$ avente $U$ e $T$ come autospazi relativi agli autovalori $0, 1$?
	2) Esiste una matrice simmetrica $S\in M_3(\mathbb{R})$ aventi $U$ e $T$ come autospazi relativi a $0$ e $1$?

**Soluzione**:
	1) $A$ esiste $\Leftrightarrow U$ e $T$ sono in somma diretta. In particolare $A$ è sicuramente diagonalizzabile perché $\mathbb{R}^3 = U \oplus T$ e sono autospazi relativi a $0$ e $1$. Quindi si ottiene che $$HAH^{-1}=\begin{pmatrix}0\\ &0\\ &&1\end{pmatrix}\Rightarrow A = H\begin{pmatrix}0\\ &0\\ &&1\end{pmatrix}H^{-1}\xRightarrow{H \text{ ha gli autovalori di }A} H = \begin{pmatrix}1 & 1 & 1\\ 1 & 1  & 0\\ 1 & 0 & 0\end{pmatrix}$$
	2) $T≠U^\bot$ rispetto al prodotto scalare standard $\nexists S$ come richiesta.

*Se la risposta fosse stata affermativa, potevo trovare una $K$ ortogonale con il metodo di Gram-Schmidt tale che $S = KDK^T$*

**Esercizio 1**:
	Su $M_{n,m}(\mathbb{R})$ consideriamo la forma bilineare $\beta(X,Y)=tr(X^TY)$. Data $A \in M_n(\mathbb{R})$ sia $\varphi_A:M_{n,m}(\mathbb{R})\rightarrow M_{n,m}(\mathbb{R})$ definita come $X\mapsto AX$. Determinare l'insieme delle matrici tali che $\varphi_A$ sia autoaggiunto rispetto a $\beta$

**Soluzione**:
	Osserviamo che $\beta$ è simmetrica (stesso motivo di un esercizio precedente), non degenere ossia $rad(\beta) =\{X \; | \; \beta(X, Y)=0, \forall Y\}$. (Sempre secondo lo stesso ragionamento dello stesso esercizio precedente)
	(Per un caso più generale si può controllare con tutte le matrici elementari).
	$\varphi_A$ è autoaggiunto se $\beta(\varphi_A (X), Y)=\beta(X, \varphi_A(Y))$ quindi:
	$\forall X, Y\in M_{n,m}(\mathbb{R})\Leftrightarrow \beta(AX,Y)=\beta(X, AY)\Leftrightarrow tr((AX)^TY)=tr(X^TA^TY)=\beta(X,A^TY)\Leftrightarrow A^TY-AY \in rad(\beta)$ ma il radicale è banale $\Rightarrow (A^T-A)Y=0, \forall Y\Rightarrow A^T=A$ 

**Esercizio 2**:
	Sia $V = \mathbb{R}$ spazio vettoriale e sia $\beta$ una forma bilineare definita positiva su $V$ e sia $f \in End(V)$ tale che $f^{AD}\circ f = f \circ f^{AD}$. Mostrare che $V = Ker(f) \oplus Im(f)$ 

**Soluzione**: 
	Poiché $\beta$ è definita positiva $\Rightarrow V = Im(f) \oplus (Im(f))^\bot$. Sappiamo che $(Im(f))^\bot = Ker(f^{AD}) \xlongequal{?} Ker(f)$ 
	$v \in Ker(f^{AD})\Leftrightarrow f^{AD}(v) = 0 \xLeftrightarrow{f\text{ definita positiva}} \beta(f^{AD}(v), f^{AD})=0\Rightarrow \beta(v, (f\circ f^{AD})(v))=0\xRightarrow{f\circ f^{AD}=f^{AD} \circ f}$  $\Leftrightarrow \beta(v, (f^{AD}\circ f)(v))=0\Rightarrow \beta(f(v), f(v))=0\Rightarrow \Rightarrow f(v)=0\Rightarrow v \in Ker(f)$ Quindi $Ker(f)=Ker(f^{AD})$

>[!def] Definizione Sottospazio Totalmente Isotropo
>Sia $V$ un $\mathbb{R}$ spazio vettoriale e sia $\beta$ una forma bilineare simmetrica. Un sottospazio $U\subseteq V$ si dice (Totalmente) Isotropo se $U \subseteq U^\bot\; (\Leftrightarrow \beta(u,v)=0, \forall u,v \in U)$ 

**Esempio 1**: 
	Se $\beta$ è non degenere e $U$ è totalmente isotropo, sappiamo che $\underbrace{dim(U)}_{≥2dim(U)}+dim(U^\bot)\xlongequal{\text{Grassmann}} dim(V)$ Allora $dim(U)≤\frac{1}{2}dim(V)$  

**Esempio 2**:
	Sia $V$ un $\mathbb{R}$ spazio vettoriale e sia $\beta$ una forma bilineare di segnatura $(p, q, 0)$. Allora se $U$ è un sottospazio isotropo massimale (cioè dalla dimensione maggiore), ha dimensione $dim(U)≤min\{p, q\}$ 
	Esiste una base $\mathscr{B}$ di $V$ rispetto alla quale $M_\mathscr{B}(\beta)=\begin{pmatrix}I_p & 0\\ 0 & -I_q\end{pmatrix}$ con $p+q=dim(V)$. Sia $p≥q$
	Se $dim(U)>q\Rightarrow \mathscr{B}=\{v_1,...,v_p,v_{p+1},...,v_{p+q}\}$. Sia $W = Span\{v_1,...,v_p\}\Rightarrow U\cap W≠\{0\}$ per la formula di Grassmann, ma se $z \in U\cap W=\begin{cases}\beta(z, z)>0 & z \in W\\ \beta(z, z)=0 & z \in U\end{cases}$ 


**Esempio 3**:
	Consideriamo la forma bilinere simmetrica su $V = \mathbb R$ spazio vettoriale di dimensione $dim(V)=5$ tale che $$M_\mathscr B(\beta)=\begin{pmatrix}1\\ &1\\ &&1 \\ &&& -1\\ &&&&-1\end{pmatrix}$$Esibiamo un sottospazio totalmente isotropo di dimensione $dim(U)=2\Rightarrow U = Span\{v_1+v_4, v_2+v_5\}$. Infatti $\beta(v_1+v_4, v_1+v_4)=\beta(v_1,v_1)+\beta(v_4,v_4)=1-1=0$

**Esercizio 1**: 
	Sia $\beta$ una forma bilineare simmetrica di $V = \mathbb R$ spazio vettoriale con $dim(V)=3$. Siano $U,W \subseteq V$ distinti con $dim(U)=dim(W)=2$. Inoltre $\beta|_U$ ha rango $1$, $\beta|_W$ ha rango $1$ e $\beta|_{U\cap W}$ è definita positiva. Calcolare la segnatura di $\beta$

**Soluzione**:
	Fissiamo una base nel modo seguente
	Sia $z \in U \cap W\Rightarrow \beta(z, z)=a≠0$. $\beta|_U$ ha rango $1\Rightarrow dim(rad(\beta|_U))=1$ Fissiamo $u≠0 \in rad(\beta|_U)\Rightarrow \beta(u,u)=0$ quindi $\{z, u\}$ è una base di $U$. Fissiamo in modo analogo $w≠0\in rad(\beta|_W)$ quindi $\{z, w\}$ è una base di $W$ e $\{z, u, w\}$ è una base di $V$. La matrice associata è quindi $$M_\mathscr B(\beta)=\begin{pmatrix}a & 0 & 0\\ 0 & 0 & b\\ 0 & b & 0\end{pmatrix}$$Tuttavia $\beta$ è non degenere, quindi $b≠0\Rightarrow det(M_\mathscr B(\beta))=-ab^2$ quindi la matrice sarà: $$\begin{pmatrix}+\\ &+\\ &&-\end{pmatrix}\Rightarrow (2, 1, 0)$$

**Esercizio 2**: 
	Sia $A = \begin{pmatrix}1 & 1& 0\\ 0 & 0 &1\\ 1& -1 & 1\end{pmatrix}$. Calcolare una matrice ortogoanle $O$ e una matrice triangolare superiore $T$ tale che $A=OT$ 

**Soluzione**:
	Si può osservare facilmente che $A$ è invertibile. Indichiamo con $\mathscr B=\{v_1,v_2,v_3\}$ i vettori colonna di $A$.
	Usiamo Gram-Schmidt per ottenere una base ortonormale di $\mathbb R^3\; \mathscr O=\{w_1,w_2,w_3\}$ che metterò sulle colonne di $O$, quindi $M^\mathscr O _\mathscr B (id)=T^{-1} \Rightarrow AM ^\mathscr O _\mathscr B = 0 \Rightarrow \begin{pmatrix}v_1 & v_2 & v_3\end{pmatrix}M_i = w_i$   
	$\displaystyle{v_1= \begin{pmatrix}1\\0\\1\end{pmatrix}\Rightarrow w_1 = \frac{1}{\sqrt{2}}\begin{pmatrix}1\\0\\1\end{pmatrix} = \frac{1}{\sqrt{2}}v_1; \; w'_2 = v_2-\langle v2,w_1 \rangle w_1 = \begin{pmatrix}1\\0\\-1\end{pmatrix} \Rightarrow w_2=\frac{1}{\sqrt{2}} \begin{pmatrix}1\\0\\-1\end{pmatrix} = \frac{1}{\sqrt{2}}v_2}$   
	$\displaystyle{ w_3 = v_3 - \langle v_3, w_1\rangle w_1 - \langle v_3, w_2 \rangle w_2 = \begin{pmatrix}0\\1\\1\end{pmatrix}- \frac{1}{2} \begin{pmatrix}1\\0\\1\end{pmatrix} + \frac{1}{\sqrt{2}} \begin{pmatrix}1\\0\\-1\end{pmatrix} = \begin{pmatrix}0\\1\\0\end{pmatrix} = v_3 - \frac{1}{\sqrt{2}} v_2 + \frac{1}{\sqrt{2}}v_1}$ Quindi si ottiene che $$O = \begin{pmatrix}\frac{1}{\sqrt{2}} & \frac{1}{\sqrt{2}} & 0\\ 0 & 0 & 1\\ \frac{1}{\sqrt{2}} & -\frac{1}{\sqrt{2}} & 0\end{pmatrix};\; M = \begin{pmatrix}\frac{1}{\sqrt{2}} & 0 & \frac{1}{{2}}\\ 0 & \frac{1}{\sqrt{2}} & \frac{1}{{2}}\\ 0 & 0 &1\end{pmatrix}\Rightarrow T= M^{-1}$$

****

## Isometrie

>[!def] Definizione di Isometria
>Sia $V$ uno spazio euclideo con un prodotto scalare che indichiamo con $\beta$. Un'Isometria di $V$ è un endomorfismo $f$ di $V$ tale che $\beta(f(v),f(w))=\beta(v,w), \forall v,w \in V$
>Fissiamo una base ortonormale $\mathscr B$ di $V \Rightarrow M_\mathscr B (\beta)=I_n$.
>Indichiamo con $F = M_\mathscr B(f)$. Allora la definizione precedente diventa $x^Ty = (Fx)^TFy, \forall x,y \in \mathbb R^n$ supponendo che $dim(V)=n \Rightarrow x^TF^TFy\Leftrightarrow F^TF = I_n$. Quindi $F$ è ortogonale. 
>In altre parole, le matrici ortogonali $n\times n$ descrivono isometrie di uno spazio euclideo di dimensioni $n$ rispetto a basi ortonormali

**Osservazione 1**: Supponiamo $H$ una matrice ortogonale $\Rightarrow det(H)=\pm 1$
Infatti $H^TH = I_n\xRightarrow{\text{Binet}} det(H^T)\cdot det(H) = 1\Rightarrow det(H)^2=1 \Rightarrow det(H)=\pm 1$  
*Questa è una condizione necessaria ma non sufficiente per dire che una matrice ortogonale è un'isometria*

**Osservazione 2**: Sia $\lambda$ autovalore di $H$ (presa come matrice ortogonale). Allora $\lambda = \pm 1$
Infatti preso $v≠0$ autovettore relativo a $\lambda$, $Hv = \lambda v$ ma $H$ è un'isometria $\Rightarrow \beta(Hv, Hv)= \beta \xRightarrow{\beta \text{ definita positiva}} \beta(\lambda v, \lambda v)=$$= \lambda^2 \beta(v, v)\Rightarrow \lambda^2 = 1 \Rightarrow \lambda = \pm 1$  

**Esercizio**: 
	Sia $V$ uno spazio Euclideo e sia $v \in V, v≠0$. Consideriamo l'applicazione lineare $\sigma_V$ su $V$ definita come $\sigma_V(w)=w-2\frac{\beta(v, w)}{\beta(v, v)}v$. Mostrare che $\sigma_V$ è una isometria

**Soluzione**:
	$\sigma_V(v)=v-2\frac{\beta(v, v)}{\beta(v, v)}v=v-2v = -v\Rightarrow v$ è un autovettore di $\sigma_V$ relativo a $-1$
	$\forall w\bot v, \sigma_V(w)=w -2\frac{\beta(w, v)}{\beta(v, v)}v = w- 2\frac{0}{\beta(v, v)}=w\Rightarrow$ ogni $w$ ortogonale a $v$ è autovettore di $\sigma_V$ relativo a $1$ 
	Essendo $\beta$ definito positivo, posso spezzare $V = \underbrace{Span\{v\}}_{\ni v \mapsto -v} \oplus \underbrace{(Span\{v\})^\bot}_{\ni w \mapsto w}$ 
	Posso costruire una base ortonormale $\mathscr B$ di $V$ scegliendo $v_1 = \frac{v}{\sqrt{\beta(v, v)}}\Rightarrow \beta(v_1,v_1)=1$ e una base ortonormale di $(Span\{v_1\})^\bot$ $\{v_2,...,v_n\}\Rightarrow \mathscr B = \{v_1,v_2,...,v_n\}$
	Quindi si ottiene che $$M_\mathscr B (\sigma_V) = \begin{pmatrix}-1 \\ & 1\\ && \ddots \\ &&& -1\end{pmatrix} \Rightarrow (M_\mathscr B(\sigma_V))^2 = I_n$$Quindi è ortogonale e di conseguenza è una simmetria
	In particolare questa rappresenta una riflessione rispetto a $W = (Span{v_1})^\bot$
	![[Drawing 2023-05-19 15.30.24.excalidraw | {width = 100%}]]

**Esercizio**:
	Descrivere le isometrie di $\mathbb R^2$ rispetto al prodotto scalare standard $\langle \; , \; \rangle$

**Soluzione**:
	Questo equivale a descrivere tutte le matrici ortogonali $2 \times 2$ $H = \begin{pmatrix}a & b\\ c & d\end{pmatrix}$ ortogonali.
	In particolare $H = \begin{pmatrix}a & b\\ c & d\end{pmatrix}\Rightarrow \left \langle \begin{pmatrix}a \\ c\end{pmatrix}, \begin{pmatrix}a \\ c\end{pmatrix} \right \rangle = a^2 + c^2 = 1$  Così anche per $\begin{pmatrix}b \\ d\end{pmatrix}$ 
	Questo è vero sempre per tutte le matrici della forma $$H = \begin{pmatrix}\cos(\varphi) & -\sin(\varphi)\\ \sin(\varphi) & \cos(\varphi)\end{pmatrix} \Rightarrow det(H) = 1\qquad K = \begin{pmatrix}\cos(\varphi) & \sin(\varphi)\\ \sin(\varphi) & -\cos(\varphi)\end{pmatrix} \Rightarrow det(K) = -1$$*Basta pensare alla circonferenza unitaria e prendere due vettori ortogonali sulla circonferenza unitaria*
	Nel caso di $H$ le matrici di $A$ descrivono le rotazioni attorno all'origine in senso antiorario di un angolo $\varphi$.
	Nel caso di $K$, questa è ortogonale e simmetrica (reale) quindi è ortogonalmente diagonalizzabile per il teorema spettrale e ha autovalori reali $\pm1$ distinti. Esistono quindi $v_1$ autovettore di $K$ relativo a $+1$ e $v_2$ autovettore di $K$ relativo a $-1$, quindi esistono due vettori $v_1, v_2$ tali che $v_1 \bot v_2$ 
	Posso sceglierli entrambi di lunghezza $1$, per cui esiste una base ortonormale di $\mathbb R^2$ rispetto alla quale la matrice $K$ è simile a $K '=\begin{pmatrix}1 & 0\\ 0 & -1\end{pmatrix}$ e quindi rappresenta una riflessione rispetto ad una retta (Autospazio $V_1$) 
	![[Drawing 2023-05-19 15.59.29.excalidraw| {width = 100%}]]

*Come possiamo scrivere tutte le isometrie di $\mathbb R^3$?*

**Esercizio**:
	Sia $f$ un'isometria dello spazio euclideo $V$ e sia $U\subseteq V$ un sottospazio. Mostrare che $f(U^\bot)=(f(U))^\bot$ 

**Soluzione**: 
	Prendiamo $v \in U^\bot\Rightarrow \forall u \in U, \beta(u, v)=0\Rightarrow \beta(f(u), f(v))\Rightarrow f(U^\bot) \subseteq (f(U))^\bot$  
	Poiché $f$ è invertibile, $\begin{cases} dim(f(U^\bot))=dim(U^\bot)\\ dim(f(U))=dim(U)\end{cases} \Rightarrow dim(f(U))^\bot = dim(U^\bot)\Rightarrow f(U^\bot)=(f(U))^\bot$  
	In particolare, poiché $f$ è isometria se $f(U)\subseteq U\Rightarrow f(U^\bot)\subseteq U^\bot$

**Soluzione del Problema**:
	Sia $H$ una matrice ortogonale reale $3 \times 3$. Il polinomio caratteristico di $H$ è un polinomio di grado $3$ a coefficienti reali ($p(t) \in \mathbb R[t], deg(p)=3$), quindi ha necessariamente una radice reale.
	*Questo perché se $\alpha$ è una radice del polinomio, allora anche $\overline{\alpha}$ è radice dello stesso polinomio. In particolare, poiché $deg(p)=3$, $p$ ha esattamente $3$ radici $\Rightarrow \exists \alpha'$ radice di $p$ tale che $\overline{\alpha'}=\alpha'\Leftrightarrow \alpha' \in \mathbb R$*
	*Oppure lo si può vedere con i limiti: sapendo che $\displaystyle{\lim_{x \rightarrow -∞}p(x)= -∞}$ e $\displaystyle{\lim_{x\rightarrow +∞} p(x) = +∞} \Rightarrow \exists x$ tale che $p(x)=0$ e lo si può dire per certezza perché il polinomio caratteristico è una funzione polinomiale, continua e derivabile $\forall x \in \mathbb R$* 
	Poiché $H$ è ortogonale, questa radice (autovalore) è $\pm 1 \Rightarrow \exists v≠0$ di lunghezza 1 tale che sia autovettore di $H$ relativo a $1$ oppure a $-1$. Chiamiamo allora $f$ l'isometria descritta da $H\Rightarrow H$ è simile ad una matrice della forma $$\begin{pmatrix}1 & \begin{matrix}0 && 0\end{matrix}\\ \begin{matrix}0\\ 0\end{matrix} & M_\mathscr B(f|_W)\end{pmatrix} \quad \vee \quad \begin{pmatrix}-1 & \begin{matrix}0 && 0\end{matrix}\\ \begin{matrix}0\\ 0\end{matrix} & M_\mathscr B(f|_W)\end{pmatrix}$$dove poniamo $W = (Span\{v_1\})^\bot$ 
	In particolare si può osservare che se $\mathscr B_W$ è una base ortonormale di $W \Rightarrow M_{\mathscr B_W}(f|_W)$ è una matrice $\in M_2(\mathbb R)$ ortogonale. Quindi possiamo individuare $4$ categorie di isometrie in $\mathbb R^3$:
	1) $\begin{pmatrix}1 & \begin{matrix}0 & 0\end{matrix}\\ \begin{matrix}0\\ 0\end{matrix} & R_\varphi\end{pmatrix} \Leftrightarrow \begin{pmatrix}1 & 0 & 0\\ 0 &\cos(\varphi) & -\sin(\varphi)\\ 0 &\sin(\varphi) & \cos(\varphi)\end{pmatrix}$ Rappresenta una rotazione attorno ad un asse
	2) $\begin{pmatrix}1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 &-1\end{pmatrix}$ Rappresenta una riflessione rispetto ad un piano (a meno di cambio di base)
	3) $\begin{pmatrix}-1 & \begin{matrix}0 & 0\end{matrix}\\ \begin{matrix}0\\ 0\end{matrix} & R_\varphi\end{pmatrix} \Leftrightarrow \begin{pmatrix}1 & \begin{matrix}0 & 0\end{matrix}\\ \begin{matrix}0\\ 0\end{matrix} & R_\varphi\end{pmatrix}\begin{pmatrix}-1 & 0 & 0\\ 0 & 1 & 0\\ 0 & 0 &1\end{pmatrix}$  È la composizione di una rotazione attorno ad un asse ($V_{-1}$) e una riflessione attorno ad un piano ($V_{-1}^\bot$)
	4) $\begin{pmatrix}-1 & 0 & 0\\ 0 & -1 & 0\\ 0 & 0 & 1\end{pmatrix}$ Rappresenta una riflessione attorno ad una retta

>[!def] Insieme delle Matrici Ortogonali
>L'insieme delle matrici ortogonali di ordine $n$ si indica con $O(n)$ e rappresentano un sottogruppo di $GL_n$


**Esercizio 1**: 
	Sia $A \in O_3(\mathbb R)$ tale che $det(A)=1$ e $tr(A)=-1$ Mostrare che $A$ è simmetrica.

**Soluzione**:
	$A$ ha polinomio caratteristico $p_A(t) \in \mathbb R[t]$ di grado $3$ ha almeno una radice reale $+1$ o $-1$ perché $A$ è ortogonale.
	Se è $+1 \Rightarrow p_A(t) = (t-1)(-t^2+at+b)$; se è $-1\Rightarrow p_A(t)=(t+1)(-t^2+at+b)$ 
	- $+1\Rightarrow-b \xlongequal{det(A)} 1$ e $a+1 \xlongequal{tr(A)} -1\Rightarrow$ $b = -1$ e $a = -2\Rightarrow p_A(t)=(t-1)(-t^2-2t-1)\Rightarrow -(t-1)(t+1)^2$ 
	- $-1\Rightarrow b = 1$ e $a -1 = -1\Rightarrow b=1$ e $a = 0\Rightarrow p_A(t)=(t+1)(-t^2+1)\Rightarrow (t+1)^2(1-t)$ 
	In entrambi i casi ho che tutte le radici sono reali $\Rightarrow$ tutti gli autovalori sono reali $\Rightarrow$ $A$ è triangolarizzabile $\Leftrightarrow \exists H$ tale che $H^{-1}AH=T$ triangolare superiore $\Leftrightarrow$ sulle colonne di $H$ ho una base $\{v_1,v_2,v_3\}$ tale che $Span\{v_1\}$, $Span\{v_1,v_2\}$ e $Span\{v_1,v_2,v_3\}=\mathbb R^3$ sono $A$ invarianti
	Posso quindi usare Gram-Schmidt per ottenere una base ortonormale $\mathscr B=\{w_1,w_2,w_3\}$ dove $Span\{w_1\}=Span\{v_1\}$ e $Span\{w_1,w_2\}=Span\{v_1,v_2\}$, che continuano ad essere $A$ invarianti.
	Se chiamo $K$ la matrice che ha sulle colonne $w_1,w_2,w_3\Rightarrow K^{-1}AK=T'$ triangolare superiore, ma $K$ è anche ortogonale, di conseguenza anche $K^{-1}AK$ è ortogonale (perché prodotto di matrici ortogonali e $O≤GL$) 
	Quindi $T'$ è diagonale.
	*In particolare, se $T'$ è ortogonale, allora $(T')^T=(T')^{-1}$. Se $T'$ è triangolare superiore, ossia è della forma $T'=(◹)\Rightarrow (T')^T=(◺)$ e $(T')^{-1}=(◹)$ Dunque $T'$ è necessariamente diagonale*

**Esercizio 2**:
	Sia $A \in M_n(\mathbb R)$
	1) Dimostrare che $A^TA$ e $A$ hanno lo stesso nucleo e quindi lo stesso rango
	2) Stabilire se $A$ vale anche per matrici a coefficienti complessi
	3) Quale delle seguenti matrici in $M_3(\mathbb R)$ possono essere scritte nella forma $A^TA$ $$B = \begin{pmatrix}0 & 1 & 2\\ 1 & 0 & 1\\ 0 & 0 & 2\end{pmatrix}\qquad C = \begin{pmatrix}0 & 1 & 2\\ 1 & 0 & 1\\ 2 & 1 & 2\end{pmatrix} \qquad D = \begin{pmatrix}3 & 1 & 7\\ 1 & 5 & 0\\ 7 & 0 & 23\end{pmatrix}$$

**Soluzione**:
	1) $Ker(A)=Ker(A^TA)$
		$\subseteq )$ $v \in Ker(A)\Rightarrow Av=0 \Rightarrow A^TAv = 0 \Rightarrow v \in Ker(A^TA), \forall v \in V$ 
		$\supseteq)$ $w \in Ker(A^TA)\Rightarrow A^TAw = 0\Rightarrow \langle w, A^TAw\rangle = 0 \Rightarrow \langle Aw, Aw \rangle = 0\Rightarrow w \in Ker(A)$ 
	2) Non è vero, infatti $A = \begin{pmatrix}1 & 1\\ i & i\end{pmatrix}\Rightarrow A^T=\begin{pmatrix}1 & i\\ 1 & i\end{pmatrix}\Rightarrow A^TA = 0$ 
	3) Iniziamo a calcolare i determinanti delle matrici: $det(B)=-2$, $det(C) = 2$, $det(D)=77$. Per il primo punto, se $A$ esiste come descritta, allora $A^TA$ è congruente a $I_3$, ossia è definita positiva. Si può vedere subito che $B$ e $C$ non lo sono in quanto i vettori $v_{1_B}$ e $v_{1_C}$ sono vettori isotropi rispettivamente di $B$ e di $C$. Per vedere se $D$ è definita positiva bisogna utilizzare il metodo dei minori principali, ossia $(3, 14, 77)$, quindi $D$ è definita positiva, quindi $\exists A \in GL_3(\mathbb R)$ tale che $A^TA=D$ 

**Esercizio Proposto**:
	Un'applicazione lineare $\varphi: V \Rightarrow V$ con $V$ spazio euclideo è una isometria se e solo se l'immagine mediante $\varphi$ di una base ortonormale di $V$ è una base ortonormale di $V$

>[!def] Definizione di Forma Quadratica
>Una forma quadratica in $n$ variabili $x_1,...,x_n$ è il polinomio omogeneo di secondo grado in $x_1,...,x_n$ tale che $$q(x_1,...,x_n)=\sum^n_{i≤j}a_{ij}x_ix_j$$ 

Se $n = 2 \Rightarrow q(x_1,x_2)=ax_1^2+bx_1x_2+cx_2^2$ 
Se $n = 3\Rightarrow q(x_1,x_2,x_3)=a_{1,1}x_1^2+a_{2,2}x_2^2+a_{3,3}x_3^2+a_{1,2}x_1x_2+a_{1,3}x_1x_3+a_{2,3}x_2x_3$ 

Se definisco una matrice simmetrica $A = (A_{i,j})$ come la matrice di una forma quadratica, ho che $A_{i,i} = a_{i,i}$ e $A_{i,j} = \frac{1}{2}a_{i,j}$ con $i≠j$. Quindi ponendo ponendo $x=\begin{pmatrix}x_1\\\vdots \\ x_n\end{pmatrix}$, si ottiene che $x^T A x = \beta_A(x, x)$  
In questo modo ho che con la formula di polarizzazione $\beta(v,w)=\frac{\beta(v+w, v+w)-\beta(v,v)-\beta(w,w)}{2}=\frac{q(v+w)-q(v)-q(w)}{2}$ 

****

## Forme Bilineari Antisimmetriche

*Ripasso*: Una forma bilineare (in un campo a caratteristica diversa da 2) si dice antisimmetrica o alternata se $\beta(v,w)=-\beta(w,v), \forall v, w \in V$ 

**Osservazione**: Questo implica che $\beta(v,v)=0, \forall v \in V$ 
(È un $\Leftrightarrow$ $\forall v, w, 0 = \beta(v+w, v+w)=\underbrace{\beta(v,v)}_{=0}+\underbrace{\beta(w,w)}_{=0}+\beta(v,w)+\beta(w,v)\Rightarrow \beta(v,w)=-\beta(w,v)$)  

Inoltre $\beta$ è antisimmetrica $\Rightarrow \forall \mathscr B$ base di $V$, $M_\mathscr B(\beta)$ è antisimmetrica $M_\mathscr B(\beta)^T = -M\mathscr B (\beta)$ 

Abbiamo già osservato che se $\beta$ è antisimmetrica non degenere, allora $dim(V)$ è pari. (Infatti se $A$ è di ordine dispari ed è antisimmetrica allora il determinante di $A$ è $0$) 

>[!def] Definizione di Base Simplettica
>Sia $\beta$ antisimmetrica non degenere su $V$ con $dim(V)=2n$. Una base $\mathscr B = \{v_1,w_1,v_2,w_2,...,v_n,w_n\}$ si dice base simplettica per $V$ se $\beta(v_i,w_i)=1 \forall i \Rightarrow \beta(w_i,v_i)=-1$ e $\beta(v_i,v_j)=\beta(w_i,w_j)=\beta(v_i,w_j)=0, \forall i≠j$ In altri termini $$M_\mathscr B(\beta)=\begin{pmatrix}\begin{matrix}0 & 1\\ -1 & 0\end{matrix} & & \boldsymbol 0\\ & \ddots \\ \boldsymbol 0 && \begin{matrix}0 & 1\\ -1 & 0\end{matrix}\end{pmatrix}$$

**Osservazione**: Ha determinante $1$ 

>[!th] Teorema
>Se $\beta$ è una forma bilineare antisimmetrica su $V$ non degenere $\Rightarrow$ esiste una base simplettica

**Corollario**: Se $\beta$ è una forma bilineare alternante $\Rightarrow \exists \mathscr B$ base tale che $$M_\mathscr B(\beta) = \begin{pmatrix}\left. \begin{matrix}0 & ... & 0\\ \vdots & \ddots & \vdots\\ 0 & ... & 0\end{matrix}\right\} rad(\beta) &  \boldsymbol 0\\ \boldsymbol 0 & \begin{matrix}\left.\begin{matrix}\begin{matrix}0 & 1\\ -1 & 0\end{matrix} & & \boldsymbol 0\\ & \ddots\\ \boldsymbol 0 && \begin{matrix}0 & 1\\ -1 & 0\end{matrix}\end{matrix}\right\}\text{Parte non degenere}\end{matrix}\end{pmatrix}$$
**Corollario**: Due matrici antisimmetriche sono congruenti $\Leftrightarrow$ hanno lo stesso rango

***Dimostrazione del Teorema***:
	Per la dimostrazione ricordiamo: 
	*Sia $\beta$ non degenere e sia $W \subseteq V$ un suo sottospazio vettoriale $\Rightarrow V = W \oplus W^\bot \Leftrightarrow \beta|_W$ è non degenere*
	Prendiamo $v_1≠0$. Poiché $\beta$ è non degenere, esiste un vettore $u_1$ tale che $\beta(v_1,u_1)≠0$.
	Poniamo $w_1 = \frac{u_1}{\beta(v_1,u_1)}\Rightarrow \beta(v_1,w_1)=\beta(v_1, \frac{u_1}{\beta(v_1,u_1)})=1$ 
	Osserviamo che $v_1$ e $w_1$ sono linearmente indipendenti, in caso contrario avrei avuto $w_1 = \lambda v_1 \Rightarrow \beta(v_1,w_1) = \lambda \beta(v_1,v_1)=0$.
	Poniamo quindi $W := Span\{v_1,w_1\}\Rightarrow$ la matrice di $\beta|_W$ relativa alla base $\{v_1,w_1\}$ è $\begin{pmatrix}0 & 1\\ -1 & 0\end{pmatrix}$ che ha determinante $1$ quindi $V = W \oplus W^\bot \Leftrightarrow \beta|_{W ^\bot}$ è non degenere antisimmetrica e quindi procediamo. Dopo $n$ passi il processo si ferma.

**Esercizio aggiuntivo**: 
	Sia $\mathbb K$ un campo finito con $q$ elementi, $V = \mathbb K ^{2n}$ e $\beta$ definita dalla matrice come nell'enunciaton del teorema. Quante basi simplettiche ci sono?

*Suggerimento*: Viene direttamente dal teorema precedente.

**Osservazione**: Questo è anche il numero di matrici $A \in GL_{2n}(\mathbb K)$ tali che $$A^TJA = J\qquad \text{con }J = \begin{pmatrix}\begin{matrix}0 & 1\\ -1 & 0\end{matrix} & & \boldsymbol 0\\ & \ddots \\ \boldsymbol 0 && \begin{matrix}0 & 1\\ -1 & 0\end{matrix}\end{pmatrix}$$

>[!def] Definizione di gruppo Simplettico - Gruppo di Lie
>Quest'insieme prende il nome di gruppo simplettico
>Su un campo infinito come $\mathbb R$ o $\mathbb C$ prende il nome di gruppo di Lie

**Esempio di costruzione di una base simplettica**:
	Sia $V = \mathbb K ^4$ e sia $\beta$ tale che $$M_{Can}(\beta)=\begin{pmatrix}0 & 2 & 3 & 0\\ -2 & 0 & 0 & 1\\ -3 & 0 & 0 &1\\ 0 &-1 & -1 & 0\end{pmatrix}$$Si parte da un vettore $v_1$. Prendiamo $v_1 = e_1$. Adesso cerchiamo $u_1$ tale che $\beta(v_1,u_1)≠0$. Posso prendere per esempio $u_1 = e_2\Rightarrow \beta(v_1,u_1) = 2\Rightarrow w_1 = \frac{1}{2}e_2$. Determino $(Span\{v_1,w_1\})^\bot\Leftrightarrow (Span\{e_1,e_2\})^\bot$. Equivale a $$\begin{cases}\begin{pmatrix}1 & 0 & 0 & 0\end{pmatrix}\begin{pmatrix}0 & 2 & 3 & 0\\ -2 & 0 & 0 & 1\\ -3 & 0 & 0 &1\\ 0 &-1 & -1 & 0\end{pmatrix}\begin{pmatrix}x_1\\ x_2\\ x_3\\ x_4\end{pmatrix}=0\\ \begin{pmatrix}0 & 1 & 0 & 0\end{pmatrix}\begin{pmatrix}0 & 2 & 3 & 0\\ -2 & 0 & 0 & 1\\ -3 & 0 & 0 &1\\ 0 &-1 & -1 & 0\end{pmatrix}\begin{pmatrix}x_1\\ x_2\\ x_3\\ x_4\end{pmatrix}=0\end{cases} \Rightarrow \begin{cases}2x_2 +3x_3 = 0\\ 2x_1-x_4=0\end{cases}\Rightarrow Span\left\{\begin{pmatrix}1\\0\\0\\2\end{pmatrix}, \begin{pmatrix}0\\3\\-2\\0\end{pmatrix}\right\}$$Pongo adesso $v_2 = e_1+2e_4$ e cerco $u_2 \in (Span\{e_1,e_2\})^\bot$ tale che $\beta(v_2,u_2)≠0$. Calcoliamo quindi: $$\beta\left(\begin{pmatrix}1\\0\\0\\2\end{pmatrix}, \begin{pmatrix}0\\3\\-2\\0\end{pmatrix}\right) = \begin{pmatrix}1&0&0&2\end{pmatrix}\begin{pmatrix}0 & 2 & 3 & 0\\ -2 & 0 & 0 & 1\\ -3 & 0 & 0 &1\\ 0 &-1 & -1 & 0\end{pmatrix} \begin{pmatrix}0\\3\\-2\\0\end{pmatrix}=\begin{pmatrix}0 & 0 & 1 & 0\end{pmatrix}\begin{pmatrix}0\\3\\-2\\0\end{pmatrix}=-2$$Posso prendere $w_2 = -\frac{1}{2}(3e_2-e_3) = -\frac{3}{2}e_2+e_3$ e otteniamo la base simplettica $\mathscr B = \{e_1,\frac{1}{2}e_2, e_1+2e_4,-\frac{3}{2}e_2+e_3\}$ 

**Osservazione**: Dal teorema di esistenza di una base simplettica, segue che se $\beta$ è una forma bilineare alternante non degenere, esistono sottospazi isotropi di dimensione $\frac{1}{2}dim(V)$. Infatti se ho $\mathscr B = \{v_1,w_1,...,v_n,w_n\}$ si ha che $Span\{v_1,...,v_n\}$ e $Span\{w_1,...,w_n\}$ sono sottospazi isotropi, ma non sono gli unici (basta cambiare base simplettica)
Si può dimostrare che dato $W \subseteq V$ sottospazio isotropo di dimensione $dim(w)=\frac{1}{2}dim(V)$ esiste una base simplettica $\{v_1,w_1,...,v_n,w_n\}$ tale che $v_1,...,v_n$ è una base di $W$.

Due matrici antisimmetriche sono congruenti se e solo se hanno lo stesso rango. Cosa si può dire della similitudine di matrici antisimmetriche (su $\mathbb R$). *Esiste qualcosa di analogo al teorema spettrale?*

In generale vale la cosa seguente:
Se ho $A \in M_n(\mathbb R)$ e $A + A^T =0\Rightarrow A$ è ortogonalmente simile ad una matrice della forma: $$\begin{pmatrix}\begin{matrix}\begin{matrix}0 & a_1\\ -a_1 & 0\end{matrix} && \boldsymbol 0\\ & \ddots \\ \boldsymbol 0 && \begin{matrix}0 & a_k\\ -a_k & 0\end{matrix}\end{matrix} & \boldsymbol 0\\ \boldsymbol 0 & \boldsymbol 0\end{pmatrix}$$