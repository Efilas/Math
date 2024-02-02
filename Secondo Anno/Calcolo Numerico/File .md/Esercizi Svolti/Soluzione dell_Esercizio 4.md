Abbiamo che la matrice $A$ è della forma: $$A = \begin{pmatrix}\times  & & \times\\ & \ddots & \\ \times & & \times \end{pmatrix}$$
	1. Tutti i minori di testa non sono zero, quindi il teorema assicura che tale decomposizione $LU$ esista
	2. *Se avessimo avuto scelta, avremmo potuto utilizzare la formula di Sherman - Morrison, ma il testo dell'esercizio ce lo impedisce*
	Con Gauss avevamo che $$m_{i,1} = \frac{A^{(1)}_{i,1}}{A^{(1)}_{1,1}}\qquad \text{per }i \in \{2,...,n\}$$
	Qui invece, sfruttando la struttura della matrice, ci basta porre $i = n$ e ottenere: $$m_{n,1} = \frac{A_{m,1}^{(1)}}{A^{(1)}_{1,1}} \qquad\Rightarrow\qquad A_{n,j}^{(2)} = A_{n,j}^{(1)} - m_{n,1} A^{(1)}_{1,j} \quad \text{con }j = n$$
	In questo modo otteniamo che la matrice $A^{(2)}$ è della forma: $$A^{(2)} = \begin{pmatrix}* && *\\ &\ddots\\ && *\end{pmatrix}\qquad \text{con }* \text{ elementi non nulli}$$
	Quindi ora possiamo procedere alla risoluzione del sistema lineare del tipo: $$\begin{pmatrix}* && *\\ &\ddots\\ && *\end{pmatrix} \begin{pmatrix}x_1\\ \vdots\\ x_n\end{pmatrix} = \begin{pmatrix}b_1^{(2)}\\ \vdots\\ b_{n}^{(2)}\end{pmatrix}$$
	Da cui possiamo procedere con la usuale risoluzione di un sistema lineare:
	$$\begin{cases}x_j = \frac{b_j^{(2)}}{A^{(2)}} & j \in\{2,...,n\}\\ A_{1,1}^{(2)}x_1 + A_{1,n}^{(2)}x_n = b_1^{(2)} & j = 1\end{cases} \quad \Rightarrow\quad \begin{cases}x_j = \frac{b_j^{(2)}}{A^{(2)}} & j \in\{2,...,n\}\\ x_1 = \frac{b_1^{(2)} - A_{1,n}^{(2)}x_n}{A^{(2)}_{1,1}} & j = 1\end{cases}$$
	Quindi il costo computazionale totale è pari a $(n-1)+3+3 = n-5$ flops