Sia $\mathbb Z[\sqrt 2]$. Questo è un dominio (non ha divisori dello zero)
Infatti, se prendiamo due elementi qualsiasi in $\mathbb Z[\sqrt 2]$ tali che $(a+b \varepsilon)\cdot (a' + b'\varepsilon) = 0$ si ha che uno tra i due è nullo.
Infatti, sviluppando il prodotto:$$(aa'+2bb') +(ab' + ba')\varepsilon =0\Rightarrow \begin{cases}aa' +2bb' = 0\\ ab'+ba' =0\end{cases}$$
Supponiamo ora che $b'≠0$. Dalla seconda equazione abbiamo che $a =\frac{-a'b}{b'}$ e sostituendolo nella prima si ha che: $$aa' +2dbb' = 0 \Rightarrow -\frac{a'b}{b'}a' +2bb'=0 \xRightarrow{\text{Moltiplicando per }bb'} -(a'b)^2 + 2(bb') =0$$
Tuttavia, poiché $2$ non  è un quadrato in $\mathbb Z$ si ha che $a'b = 0$ e $bb'=0$ ma se $b'≠0$ per quanto posto prima, segue che $a=b=0$
Quindi $(a+b\varepsilon) =0$, quindi $\mathbb Z[\sqrt 2]$ è un dominio.
In maniera del tutto analoga possiamo dimostrare che $\mathbb Q[\sqrt 2]$ è un campo.
Sia $(a+b \varepsilon)≠0$, cioè siano $a,b$ non entrambi nulli. Allora per il lemma precedente si ha che $a^2-2b^2≠0$ e possiamo verificare che: $\frac{a}{a^2-2b^2} - \frac{b}{a^2-2b^2}\varepsilon$ è l'inverso di $a+b \varepsilon$: $$(a+b\varepsilon) = \left(\frac a {a^2-2b^2} - \frac{b\varepsilon}{a^2-2b^2}\right) = \frac 1{a^2-2b^2}((a+b\varepsilon)\cdot (a-b\varepsilon)) = \frac{1}{a^2 - 2b^2}(a^2-2b^2) = 1$$