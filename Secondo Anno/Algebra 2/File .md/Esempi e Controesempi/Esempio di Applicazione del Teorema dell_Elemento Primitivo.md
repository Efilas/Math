Sia $L = \mathbb Q[\sqrt[3]{3}, i]$ (quindi $K = \mathbb Q$) e vogliamo trovare un elemento $\gamma$ tale che $L = \mathbb Q[\gamma]$

Utilizziamo la dimostrazione del teorema: 
Poniamo $$\alpha = \sqrt[3]{3}$$ Sappiamo che il polinomio minimo di $\alpha$ è $f = x^3 - 3$ che è irriducibile per Eisenstein
Siano $\alpha_2$ e $\alpha_3$ le altri radici dello stesso polinomio e siano rispettivamente $$\alpha_2 =\sqrt[3]{3}\omega\quad \text e \quad \alpha_3 = \sqrt[3]{3}\omega^2\qquad \text{con }\omega = -\frac 12 + \frac{\sqrt 3}2i$$
Poniamo poi: $$\beta = i$$
Abbiamo gratuitamente che il polinomio minimo di $\beta$ è $g = x^2+1$ e abbiamo che l'altra radice è: $$\beta_2 = -i$$
Vogliamo quindi trovare una costante $c\in \mathbb Q$ tale che: $$\sqrt[3] 3 + ci ≠ \alpha_i + c\beta_j \qquad \text{con } (i,j)≠(1,1)$$
*Prendiamo per esempio $i = 2$ e $j = 2$, allora abbiamo che: $$\sqrt[3]3 +ci ≠ \sqrt[3]3\omega - ci\quad \Rightarrow \quad 2ci ≠ \sqrt[3]3(\omega-1)\quad \Rightarrow \quad c≠\frac{\sqrt[3]3(\omega -1 )}{2i}$$*
Non mi aspetto che siano razionali, basta che ottengo un elemento $c$ che sia diverso da tutti quelli precedenti.
In questo caso posso scegliere $\gamma = \sqrt[3]3i$, infatti: $$\gamma = \sqrt[3]3i \quad \Rightarrow \quad \gamma^3 = -3i \quad \Rightarrow \quad i \in K[\gamma]$$
Ma se $i \in K[\gamma]$, allora abbiamo che: $$\sqrt[3]3 = \frac \gamma i \in K[\gamma]\quad \Rightarrow \quad \mathbb Q[\gamma] = \mathbb Q[i, \sqrt[3]3]$$
*Questo funziona solamente perché $i$ e $\sqrt[3]3$ hanno gradi diversi*