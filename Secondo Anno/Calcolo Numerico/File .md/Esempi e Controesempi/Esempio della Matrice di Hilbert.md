La matrice di Hilbert è un esempio di una matrice malcondizionata.
Definita come:
$$H_n \in \mathbb R^{n\times n} \qquad (H_n)_{i,j} = \frac{1}{i+j-1}\qquad \text{con }n \in \mathbb N$$
Abbiamo che la matrice $H_n$ è della forma: $$\begin{pmatrix}1 & \frac{1}{2} & \frac{1}{3} & \cdots\\ \frac{1}{2} & \frac 13 &\frac 14 &\cdots \\ \frac 13 & \frac 14 & \frac 15 & \cdots\\ \vdots & \vdots & \vdots & \ddots\end{pmatrix}$$
Seppur definita in maniera così semplice, si ha che ha un numero di condizionamento incredibilmente alto, infatti:
	- con $n = 4$, si ha che $\kappa(H_4) = 1,55 \cdot 10^{6}$
	- con $n = 8$, si ha che $\kappa(H_8) = 1,52 \cdot 10^{10}$
	- generalmente per un qualsiasi $n$, $\kappa(H_n)$ cresce come $e^{3,5 n}$

Quindi dati $b, b+ \delta b$  vettori delle soluzioni desiderate (la prima reale, la seconda perturbata), si ha che c'è uno sbalzo di errore di grandezza dell'ordine di $10^9$ tra queste e $x, x+\delta x$ soluzioni dei sistemi reale / perturbato.
Infatti se $b, n + \delta b$ sono dell'ordine di $10^{-12}$ si ha che le soluzioni sono dell'ordine di $10^{-4}$.
*Per un esempio più concreto, Virtuale oppure dispense*