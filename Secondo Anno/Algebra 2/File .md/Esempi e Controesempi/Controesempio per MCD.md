Prendiamo $A = \mathbb Z[\sqrt{-5}]$ e scegliamo $a= 6$ e $b = 2(1+\varepsilon)$
Vogliamo mostrare che non non esiste $\mathcal{MCD}(a,b)$. Supponiamo per assurdo che esiste $d = \mathcal{MCD}(a,b)$
Andiamo a calcolare le norme di $a$ e di $b$:
$$
\begin{cases}
N(a) = 36\\
N(b) = 24
\end{cases}
\Rightarrow N(d) \mid 36 \wedge N(d)\mid 24 \Rightarrow N(d)\mid 12
$$
Tuttavia abbiamo che $a = (1+\varepsilon)(1-\varepsilon) = 2\cdot 3$
Se $a = (1+\varepsilon)(1-\varepsilon)$, allora abbiamo che $(1+\varepsilon)\mid a$ e $(1+\varepsilon) \mid b$, quindi $(1+\varepsilon) \mid d \Leftrightarrow 6 \mid N(d)$ da cui segue che $N(d)=6 \vee 12$
Se $a = 2\cdot 3$, allora abbiamo che $2 \mid a$ e $2\mid b$, quindi $2 \mid d$, da cui segue che $4 \mid N(d)$
Da queste due affermazioni segue che $N(d)=12$, tuttavia $N(x+y\varepsilon) = x^2+5y^2≠12, \forall x,y \in \mathbb Z$, cioè non esistono elementi di norma $12$ in $\mathbb Z[\sqrt{-5}]$