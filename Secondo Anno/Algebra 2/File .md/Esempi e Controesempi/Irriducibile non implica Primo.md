Prendiamo $\mathbb Z[\sqrt{-5}]$, qui si ha che $6 = 2 \cdot 3 = (1 + \varepsilon)(1-\varepsilon)$
Notiamo che $2 \in \mathbb Z[\sqrt{-2}]$ è irriducibile, infatti $N(2)=4$, cioè dovrebbero esistere due elementi $b,c \in \mathbb Z[\sqrt{-5}]$ tali che $N(bc)=4$
Per come è stata definita la norma segue che $N(bc) = N(b)N(c)$, analizziamo i casi possibili:
	- $N(b)=1$, allora $b$ è invertibile, quindi è una fattorizzazione banale
	- $N(b) = 4$, allora $N(c)=1$ quindi $c$ è invertibile, sempre una fattorizzazione banale
	- $N(b) = N(c) = \pm 2$. Notiamo che $\forall x,y \in \mathbb Z$, $N(x+y\varepsilon) = x^2+5y^2$, quindi è sempre positivo. Tuttavia $\nexists x,y \in \mathbb Z$ tali che $N(x+ y \varepsilon)= x^2 + 5y^2 =2$. Quindi $2$ è irriducibile.
Tuttavia $2$ non è primo in $\mathbb Z[\sqrt{-5}]$, infatti esistono $b,c \in \mathbb Z[\sqrt{-5}]$ tali che $2 \mid bc$ ma $2 \nmid b$ e $2 \nmid b$.
Per sopra basta prendere $b=(1 + \varepsilon)$ e $c = (1-\varepsilon)$, infatti $2\mid (1+\varepsilon)(1-\varepsilon)$ ma $2$ non divide nessuno dei due