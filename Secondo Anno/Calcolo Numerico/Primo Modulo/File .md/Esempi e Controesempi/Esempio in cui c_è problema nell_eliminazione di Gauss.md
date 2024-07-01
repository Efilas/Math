Prendiamo per esempio la matrice $$A = \begin{pmatrix}10^{-4} & 1\\1 & 1\end{pmatrix}$$
Tramite conti diretti si può dimostrare che $\kappa(A) \approx 4$, quindi la matrice è ben condizionata.
Facciamo la fattorizzazione $A = LU$ e otteniamo la matrice $$U = \begin{pmatrix}10^{-4} & 1\\ 0 & 1-10^{4}\end{pmatrix}$$
Segue immediatamente che $\|U\|_F ≥ 10^{4}$. Inoltre sapendo che: $$U^{-1} = \begin{pmatrix}10^4 & *\\ 0 & (1-10^{-4})^{-1}\end{pmatrix} \qquad  \Rightarrow \qquad \kappa(U^{-1}) \approx 10^4$$
Da cui segue direttamente che $\kappa (U) ≥ 10^8$, quindi $U$ è molto mal condizionata.
Invece vogliamo che i fattori non peggiorino le proprietà di $A$, ossia vorremmo che $$\kappa (A)\approx \kappa(L) \qquad \text{e} \qquad \kappa(A)\approx \kappa(L)$$