Per il primo punto basta vedere gli esercizi precedenti
Pr il secondo punto vogliamo usare Givens: $$H = Q \begin{pmatrix}R_1\\ 0\end{pmatrix}\quad \Rightarrow \quad \|b-Hx\|^2 = \left\|Q^tb - \begin{pmatrix}R_1\\ 0\end{pmatrix}x \right\|^2$$
Tuttavia, sapendo che $Q = (Q_1 , Q_2)$: $$\|b-Hx\|^2= \left\| \begin{pmatrix}Q_1^Tb\\ Q_2^Tb\end{pmatrix}- \begin{pmatrix}R_1\\ 0\end{pmatrix}x \right\|^2 = \underbrace{\|Q_1^Tb - R_1x\|^2}_{0} + \|Q^T_2 b \|^2 = \|Q^T_2 b\|^2$$
*Tutto questo funziona perché siamo in norma Euclidea o Norma 2 e perché tutto è al quadrato*
Quindi otteniamo che: $\|b-Hx\| = \|Q_2^Tb\|$