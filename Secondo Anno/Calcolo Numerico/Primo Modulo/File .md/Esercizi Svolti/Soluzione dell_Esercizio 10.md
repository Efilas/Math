Per il primo punto basta descrivere l'algoritmo di Thomas, cioè come si ottengono $L$ e $U$ 
Per il secondo punto: abbiamo che la matrice è del tipo: $$\begin{pmatrix}A\\ \gamma e_n^T\end{pmatrix} = \begin{pmatrix}\times & \times & 0 &\cdots& \cdots & 0\\
\times & \times & \times & \ddots && \vdots\\ 0 & \times & \ddots & \ddots & \ddots & \vdots\\
\vdots & \ddots & \ddots & \ddots & \ddots &0\\
\vdots && \ddots & \ddots &\ddots &\times\\
0 & \cdots & \cdots & 0 & \times & \times\\
0  & \cdots & \cdots & \cdots & 0 & \times
\end{pmatrix}$$
*È importante sapere come è fatta la matrice per capire come lavorarci*
Proviamo a sviluppare come facevamo negli esercizi precedenti otteniamo che: $$\left\| b - \begin{pmatrix}A\\ \gamma e_n^T\end{pmatrix}x\right\| = \left\| b - \begin{pmatrix}LU\\ \gamma e_n^T\end{pmatrix}x\right\|$$
Però una volta arrivati qua ci blocchiamo, in quanto non possiamo raccogliere $L$ rispetto a come facevamo precedentemente.
Possiamo però utilizzare la formula di Sherman Morrison sull'equazione normale: $$(A^T, \gamma e_n)\begin{pmatrix}A\\ \gamma e_n^T\end{pmatrix}x = (A^T, \gamma e_n)b \quad \Rightarrow \quad (A^TA + \gamma^2 e_ne_n^T)x = (A^T, \gamma e_n)b$$
Se poi vogliamo sostituire $A$ con $LU$, otteniamo che: $$(\underbrace{U^TL^TLU}_{H} + \underbrace{\gamma e_ne_n^T}_{U})x = \underbrace{(A^T, \gamma e_n)b}_{\hat b}$$
Ponendo poi $\gamma^2 e_n = u$ e $e_n = v$ otteniamo: $$x = H^{-1}\hat b- H^{-1}u(1-v^TH^{-1}u)^{-1}v^TH^{-1}\hat b$$
Poi andrebbero risolti dei sistemi lineari interni e andare avanti.
*Chiaramente poi andrà spiegato ogni passaggio e il costo computazionale*
