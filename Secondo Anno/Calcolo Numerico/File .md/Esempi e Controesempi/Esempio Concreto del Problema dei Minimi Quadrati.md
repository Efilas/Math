Un esempio cardine è quello della Regressione Lineare:

![[Drawing 2023-11-24 11.52.39.excalidraw | 100%]]

Siano quindi $(x_i,y_i)$ dei punti nel piano, con $i \in \{1,...,n\}$ e vogliamo sapere se c'è una dipendenza lineare tra le $x$ e le $y$ 
*Vogliamo sapere quindi se c'è una retta che meglio approssima i punti del piano. Non ci serve sapere che sia perfetta, basta che si avvicini il più possibile*
Quindi vogliamo trovare una retta $y = mx + q$ che meglio approssimi questi punti
Nel fare ciò dobbiamo porre che la distanza di questi punti dalla retta sia la più piccola possibile, cioè: $$\forall i \in \{1,...,n\} \quad |y_i - \hat y_1| \text{ sia la più piccola possibile}$$
Possiamo ragionare anche in termini di vettori, quindi: $$\min_{m,q \in \mathbb R} \| y- \hat y\|^2_2 \quad \text{con }y = \begin{pmatrix}y_1\\ \vdots\\ y_n\end{pmatrix} \text{ e } \hat y = \begin{pmatrix}\hat y_1\\ \vdots \\ \hat y_n\end{pmatrix}$$
Vogliamo minimizzare quella distanza (sono somme di quadrati, per questo il nome)
Andiamo a sviluppare quello che vogliamo trovare:
$$\|y - \hat y\|^2_2 = \| y - (mx + q\underline 1)\|_2^2 = \left\|\underbrace{y}_b - \underbrace{\begin{pmatrix}\underline 1 & x\end{pmatrix}}_{A}\underbrace{\begin{pmatrix}q \\ m\end{pmatrix}}_x\right \| = \|b-Ax\|^2_2$$
*Per chiarezza, $y, \hat y, x$ sono vettori, $\underline 1$ è un vettore di tutti $1$, $q,m$ sono degli scalari*

*Se avessimo avuto più variabili, cioè ci fossimo trovati in $\mathbb R^n, n>2$, allora la matrice $A$ avrebbe avuto tante più colonne*