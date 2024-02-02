Riprendiamo la definizione della norma di Frobenius: 
$$\|B-AX\|_F^2= \sum_{i = 1}^p \| \underline b_i - A\underline x_i\|_2^2\qquad \text{dove abbiamo che }B = \begin{pmatrix}\underline b_1,..., \underline b_p\end{pmatrix} \quad X = \begin{pmatrix}\underline x_1 ,..., \underline x_p\end{pmatrix}$$
Se volessi minimizzare questa quantità dovremmo: $$\min_{X \in \mathbb R^{m \times p}}\|B-AX\|_F^2 = \min_{\{\underline x_1,...,\underline x_p\} \in \mathbb R^p} \sum_{i = 1}^p\|\underline b_i - A\underline x_i\|_2^2 = \sum_{i = 1}^p \min_{\underline x_i \in \mathbb R^b} \|\underline b_i - A\underline x_i\|_2^2$$
Poi chiaramente devo mettere tutto insieme per avere $X = \begin{pmatrix}\underline x_1,..., \underline x_p\end{pmatrix}$

Cerchiamo però di ottimizzare il tutto: 
Nella scrittura dell'algoritmo, possiamo fare direttamente la stessa fattorizzazionre $QR$: $$(A, \underline b_1, \underline b_2, ..., \underline b_p) = (A,B) \quad \Rightarrow \quad P_m\cdots P_2P_1 (A, B) = (R_1, \hat B)$$
Dove abbiamo che $$\hat B = (\hat b_1, \hat b_2, ...,\hat b_p) = (Q^T \underline b_1,...,Q^T \underline b_p)$$
Adesso basta risolvere i vari sistemi lineari: $$R \underline x_i = {\underline {\hat b}_i}_{(i:m)}\qquad \text{con }i \in \{1,...,p\}$$
*Con matlab possiamo direttamente risolvere $RX = \hat B_{(i:m)}$ senza dover fare i cilci*
*Lo scopo di quest'esercizio era non dover fare tutti i sistemi lineari, poi ci sarebbe da calcolare il costo computazionale*

